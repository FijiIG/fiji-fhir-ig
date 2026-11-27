# Fiji Head Circumference Example - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Head Circumference Example**

## Example Observation: Fiji Head Circumference Example

Profile: [Head circumference Vitals - Fiji](StructureDefinition-fiji-vital-head-circumference.md)

**status**: Final

**category**: Vital Signs

**code**: Head Occipital-frontal circumference

**subject**: [Adi Kalo(official) Female, DoB: 2024-11-02 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#44555666 (use: official))](Patient-FijiPatientChildExample.md)

**effective**: 2026-09-09 10:15:00+1200

**performer**: [Jone Nabose (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#MED-12345)](Practitioner-FijiPractitionerExample.md)

**value**: 42.5 cm (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiHeadCircumferenceExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-head-circumference"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "9843-4",
      "display" : "Head Occipital-frontal circumference"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientChildExample"
  },
  "effectiveDateTime" : "2026-09-09T10:15:00+12:00",
  "performer" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 42.5,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
