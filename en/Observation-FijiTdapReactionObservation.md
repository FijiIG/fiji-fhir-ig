# Tdap Injection Site Reaction - Draft Fiji Core Implementation Guide v0.9.0

## Example Observation: Tdap Injection Site Reaction

**status**: Final

**code**: Skin rash

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-08

**performer**: [Jone Nabose (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#MED-12345)](Practitioner-FijiPractitionerExample.md)

**value**: Injection site disorder



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
      "display" : "Skin rash"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-08",
  "performer" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "95376002",
      "display" : "Injection site disorder"
    }]
  }
}

```
