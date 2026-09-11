# Tdap Immunization with Reaction - Draft Fiji Core Implementation Guide v0.2.0

## Example Immunization: Tdap Immunization with Reaction

Profile: [Fiji Immunization](StructureDefinition-fiji-immunization.md)

**status**: Completed

**vaccineCode**: Tdap

**patient**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Patient encounter procedure; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**occurrence**: 2026-09-07

**location**: `FijiClinicExample`

**lotNumber**: TDAP-FJ-2026-001

**site**: Left upper arm structure

**route**: Intramuscular injection

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | `FijiPractitionerExample` |

### Reactions

| | | |
| :--- | :--- | :--- |
| - | **Date** | **Detail** |
| * | 2026-09-08 | [Observation Skin lesion](Observation-FijiTdapReactionObservation.md) |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "FijiImmunizationReactionExample",
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
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "occurrenceDateTime" : "2026-09-07",
  "location" : {
    "reference" : "FijiClinicExample"
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
      "reference" : "FijiPractitionerExample"
    }
  }],
  "reaction" : [{
    "date" : "2026-09-08",
    "detail" : {
      "reference" : "Observation/FijiTdapReactionObservation"
    }
  }]
}

```
