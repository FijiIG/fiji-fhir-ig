This page provides information for developers and implementers wishing to download and use the Fiji Core Implementation Guide artifacts.

TODO:  Details below are example only, these need to be adjusted to match the reality of the distribution.

### Package Information

| Item          | Value                                |
| ------------- | ------------------------------------ |
| Package ID    | `health.gov.fhir.fj.core`              |
| Version       | `0.1.1-ci-build`                       |
| FHIR Version  | `4.0.1 (R4)`                         |
| Canonical URL | `https://core.fhir.health.gov.fj` |

### NPM Package

The complete implementation guide is distributed as an NPM package:

```text
health.gov.fhir.fj.core#??? (not yet available)
```

The package contains:

* Profiles
* Extensions
* Value Sets
* Code Systems
* Example resources

### Validation

The package may be used with the HL7 FHIR Validator:

```bash
java -jar validator.jar resource.json \
  -ig health.gov.fhir.fj.core
```

### Source Repository

The source repository contains:

* FSH definitions
* Example resources
* Markdown documentation
* Published implementation guide content

Repository:

```text
https://github.com/FijiIG/fiji-fhir-ig.git
```

## Continuous Integration Build

The CI build contains the latest development version of the guide and should be used for testing purposes only.

## Downloadable Artifacts

The following artifacts are available through the published package:

* Complete NPM package
* JSON definitions
* XML definitions
* Turtle definitions
* Example resources
* Terminology artifacts

## Artifacts Summary

See the [Artifacts Summary](artifacts.html) page for a complete list of profiles, extensions, terminology artifacts, and examples.

## Related Pages

* [Getting Started](gettingstarted.html)
* [Conformance](conformance.html)
* [Examples](examples.html)
* [Artifacts Summary](artifacts.html)
