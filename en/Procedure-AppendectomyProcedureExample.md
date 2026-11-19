# Appendectomy Procedure Example - Draft Fiji Core Implementation Guide v0.9.0

## Example Procedure: Appendectomy Procedure Example

Profile: [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md)

**status**: Completed

**category**: Surgical procedure

**code**: Appendectomy

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = http://fhir.health.gov.fj/identifier/encounter#FijiEncounterIdentifier#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Outpatient consultation; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**performed**: 2026-11-16 09:30:00+1200

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Surgeon | [Jone Nabose (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#MED-12345)](Practitioner-FijiPractitionerExample.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "AppendectomyProcedureExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-procedure"]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80146002",
      "display" : "Appendectomy"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "performedDateTime" : "2026-11-16T09:30:00+12:00",
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "304292004",
        "display" : "Surgeon"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/FijiPractitionerExample"
    }
  }]
}

```
