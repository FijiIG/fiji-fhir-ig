#!/usr/bin/env python3
r'''
Extract concept rules from a FSH CodeSystem into a CSV (code, display, definition),
and write every line before the first concept rule to a separate "header" file.

Usage:
    python fsh_concepts_to_csv.py input.fsh
    python fsh_concepts_to_csv.py input.fsh -o concepts.csv -H header.fsh

Concept rules recognised (FSH CodeSystem syntax):
    * #code
    * #code "Display"
    * #code "Display" "Definition"
    * #"code with spaces" "Display" "Definition"
    * #code "Display" """multi-line
      definition"""
    Indented (hierarchical) child concepts, e.g. "  * #child ..."

Not treated as concepts (reported on stderr and skipped):
    * Caret rules on a concept, e.g.  * #code ^property[0].code = #foo
    * Any other non-concept line after the first concept rule
'''

import argparse
import csv
import re
import sys
import textwrap
from pathlib import Path

CONCEPT_START = re.compile(r"^\s*\*\s+#")


def read_string(s, i):
    """Read a FSH string starting at s[i] ('"' or '\"\"\"'). Return (value, new_index)."""
    if s.startswith('"""', i):
        end = s.find('"""', i + 3)
        if end == -1:
            raise ValueError("unterminated triple-quoted string")
        raw = s[i + 3:end]
        # Strip common indentation and surrounding blank lines of multi-line strings
        first, _, remainder = raw.partition("\n")
        value = (first + ("\n" + textwrap.dedent(remainder) if remainder else "")).strip("\n")
        return value, end + 3
    # Regular double-quoted string with backslash escapes
    i += 1
    out = []
    while i < len(s):
        c = s[i]
        if c == "\\" and i + 1 < len(s):
            nxt = s[i + 1]
            out.append({"n": "\n", "t": "\t", "r": "\r"}.get(nxt, nxt))
            i += 2
            continue
        if c == '"':
            return "".join(out), i + 1
        out.append(c)
        i += 1
    raise ValueError("unterminated string")


def parse_concept(rule):
    """
    Parse the text of one concept rule (everything after the leading '*').
    Returns (codes, strings, rest) where codes is the list of #codes found,
    strings the list of quoted strings after them, rest any unparsed remainder.
    """
    s = rule.strip()
    i = 0
    codes, strings = [], []

    def skip_ws(j):
        while j < len(s) and s[j].isspace():
            j += 1
        return j

    # One or more codes: #code or #"quoted code"
    while i < len(s) and s[i] == "#":
        i += 1
        if i < len(s) and s[i] == '"':
            code, i = read_string(s, i)
        else:
            m = re.match(r"\S+", s[i:])
            code = m.group(0) if m else ""
            i += len(code)
        codes.append(code)
        i = skip_ws(i)

    # Up to two strings: display, definition
    while i < len(s) and s[i] == '"' and len(strings) < 2:
        val, i = read_string(s, i)
        strings.append(val)
        i = skip_ws(i)

    return codes, strings, s[i:].strip()


def collect_rules(lines, start):
    """Group lines from `start` into logical rules, joining multi-line triple-quoted strings."""
    rules = []
    i = start
    while i < len(lines):
        first_line_no = i + 1
        buf = lines[i]
        # If the line opens a triple-quoted string that doesn't close, keep consuming lines
        while buf.count('"""') % 2 == 1 and i + 1 < len(lines):
            i += 1
            buf += "\n" + lines[i]
        rules.append((first_line_no, buf))
        i += 1
    return rules


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("input", help="FSH file containing a CodeSystem")
    ap.add_argument("-o", "--csv", help="output CSV path (default: <input>_concepts.csv)")
    ap.add_argument("-H", "--header", help="output header path (default: <input>_header.fsh)")
    args = ap.parse_args()

    in_path = Path(args.input)
    csv_path = Path(args.csv) if args.csv else in_path.with_name(in_path.stem + "_concepts.csv")
    header_path = Path(args.header) if args.header else in_path.with_name(in_path.stem + "_header.fsh")

    text = in_path.read_text(encoding="utf-8")
    lines = text.splitlines()

    start = next((n for n, line in enumerate(lines) if CONCEPT_START.match(line)), None)
    if start is None:
        sys.exit(f"No concept rules (lines like '* #code ...') found in {in_path}")

    # Header: every line before the first concept rule, unchanged
    header_path.write_text("\n".join(lines[:start]) + ("\n" if start else ""), encoding="utf-8")

    rows, skipped = [], []
    for line_no, rule in collect_rules(lines, start):
        stripped = rule.strip()
        if not stripped or stripped.startswith("//"):
            continue  # blank lines and comments
        if not CONCEPT_START.match(rule):
            skipped.append((line_no, stripped, "not a concept rule"))
            continue
        body = re.sub(r"^\s*\*\s+", "", rule, count=1)
        try:
            codes, strings, rest = parse_concept(body)
        except ValueError as e:
            skipped.append((line_no, stripped, str(e)))
            continue
        if rest.startswith("^"):
            skipped.append((line_no, stripped, "caret rule on a concept"))
            continue
        if rest:
            skipped.append((line_no, stripped, f"unexpected trailing text: {rest!r}"))
            continue
        if len(codes) > 1:
            print(f"Note line {line_no}: code path {' > '.join(codes)} - using last code '{codes[-1]}'",
                  file=sys.stderr)
        display = strings[0] if len(strings) > 0 else ""
        definition = strings[1] if len(strings) > 1 else ""
        rows.append((codes[-1], display, definition))

    with csv_path.open("w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["code", "display", "definition"])
        w.writerows(rows)

    print(f"Header ({start} lines) -> {header_path}")
    print(f"Concepts ({len(rows)}) -> {csv_path}")
    for line_no, text_, reason in skipped:
        print(f"Skipped line {line_no} ({reason}): {text_.splitlines()[0]}", file=sys.stderr)


if __name__ == "__main__":
    main()