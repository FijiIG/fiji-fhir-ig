Profile: FijiHumanName
Parent: HumanName
Id: fiji-humanname
Title: "Fiji HumanName"
Description: """
A HumanName profile designed for representing Fiji names.

Naming conventions are diverse and may not align with Western norms. This profile accommodates a range of naming practices including:

- Absence of family names (e.g., in some cultures where individuals may have only given names)
- Patronymic or Matronymic structures
- Multiple given names
- Customary and ceremonial naming
- Distinction between 'usual' (social) and 'official' (legal) names

At least one FijiHumanName instance must exist on FijiPatient and FijiPractitioner resources.
Systems SHALL NOT require both usual and official names.

Note: Clan affiliation is recorded separately from the FijiHumanName.  It issupported as an optional extension of  FijiPatient and FijiPractitioner resources to capture important cultural identity information.

**STATUS**: Proposed for wider Pacific use - needs further review and consensus from Pacific stakeholders before finalization.
"""

* ^status = #active

// -----------------------------
// Cardinality Rules
// -----------------------------

* given 1..*
* family 0..1
* text 0..1
* prefix 0..*
* suffix 0..*

// -----------------------------
// use Guidance
// -----------------------------

* use 0..1
* use MS
* use ^short = "Identifies whether this is the usual or official name"
* use ^definition = """
Indicates the purpose of this name instance.
Guidance:

- official: The name as recorded in civil registration,
  passport, or national identity documents. May be Westernised.
  Family name may be absent.

- usual: The name used in everyday life, including customary,
  ceremonial, or socially recognised forms. May include titles.
  This is typically the name displayed in clinical systems.

- nickname: Informal or shortened name used locally.

Other values (temp, old, maiden, anonymous) should be used only
if specifically required by national policy.
"""

// -----------------------------
// Text Rendering Guidance
// -----------------------------

* text ^short = "Full culturally appropriate rendering of the name"
* text ^definition = """
The complete culturally appropriate display form of the name.

Implementations SHOULD populate text to preserve correct
ordering, titles, clan references (if rendered), macrons,
glottal markers, and other orthographic features.

Clinical systems SHOULD render 'usual.text' when available.
"""

// -----------------------------
// Given Name Definition
// -----------------------------

* given ^definition = """
Given names. At least one required.

Multiple given names are common. Unicode characters
including macrons and glottal markers are permitted.
"""

// -----------------------------
// Family Name Definition
// -----------------------------

* family ^definition = """
Family name if present.

In some contexts this may represent:
- An inherited surname
- A patronymic (father's name)
- A colonial-era family name

Family name SHALL NOT be mandatory.
"""

// -----------------------------
// Invariants
// -----------------------------
* obeys pac-hn-1
* obeys pac-hn-2

Invariant: pac-hn-1
Description: "At least one of given or text must be present"
Expression: "given.exists() or text.exists()"
Severity: #error

Invariant: pac-hn-2
Description: "If use is 'official' or 'usual', text is strongly recommended"
Expression: "use.exists() implies text.exists()"
Severity: #warning
