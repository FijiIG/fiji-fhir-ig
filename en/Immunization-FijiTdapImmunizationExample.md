# Tdap Immunization - Draft Fiji Core Implementation Guide v0.2.0

## Example Immunization: Tdap Immunization

Profile: [Fiji Immunization](StructureDefinition-fiji-immunization.md)

**status**: Completed

**vaccineCode**: Tdap

**patient**: [Patient/example-patient](Patient/example-patient)

**encounter**: [Encounter/example-encounter](Encounter/example-encounter)

**occurrence**: 2026-09-07

**location**: [Location/example-clinic](Location/example-clinic)

**lotNumber**: TDAP-FJ-2026-001

**site**: Left upper arm structure

**route**: Intramuscular injection

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner/example-practitioner](Practitioner/example-practitioner) |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "FijiTdapImmunizationExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/cvx",
      "code" : "115",
      "display" : "Tdap"
    }]
  },
  "patient" : {
    "reference" : "Patient/example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/example-encounter"
  },
  "occurrenceDateTime" : "2026-09-07",
  "location" : {
    "reference" : "Location/example-clinic"
  },
  "lotNumber" : "TDAP-FJ-2026-001",
  "site" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "368208006",
      "display" : "Left upper arm structure"
    }]
  },
  "route" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "76601001",
      "display" : "Intramuscular injection"
    }]
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/example-practitioner"
    }
  }]
}

```
