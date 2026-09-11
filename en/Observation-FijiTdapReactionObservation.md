# Tdap Injection Site Reaction - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Tdap Injection Site Reaction

**status**: Final

**code**: Skin lesion

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-08

**value**: Injection site reaction



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiTdapReactionObservation",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "271807003",
      "display" : "Skin lesion"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-08",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385615009",
      "display" : "Injection site reaction"
    }]
  }
}

```
