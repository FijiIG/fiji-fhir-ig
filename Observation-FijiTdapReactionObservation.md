# Tdap Injection Site Reaction - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tdap Injection Site Reaction**

## Example Observation: Tdap Injection Site Reaction

**status**: Final

**code**: Clinical history/examination observable

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-08

**performer**: [Jone Nabose (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#MED-12345)](Practitioner-FijiPractitionerExample.md)

**value**: Skin rash



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiTdapReactionObservation",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363788007",
      "display" : "Clinical history/examination observable"
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
      "code" : "271807003",
      "display" : "Skin rash"
    }]
  }
}

```
