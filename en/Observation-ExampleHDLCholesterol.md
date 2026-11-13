# Example HDL Cholesterol - Draft Fiji Core Implementation Guide v0.9.0

## Example Observation: Example HDL Cholesterol

Profile: [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md)

**status**: Final

**category**: Laboratory

**code**: Cholesterol in HDL [Mass/volume] in Serum or Plasma

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-23 09:00:00+1200

**performer**: [Jone Nabose (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#MED-12345)](Practitioner-FijiPractitionerExample.md)

**value**: 1.3 mmol/L (Details: UCUM codemmol/L = 'mmol/L')

**specimen**: [Specimen: status = available; type = Serum specimen; receivedTime = 2026-09-23 09:15:00+1200](Specimen-ExampleLipidSpecimen.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleHDLCholesterol",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2085-9",
      "display" : "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-23T09:00:00+12:00",
  "performer" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 1.3,
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "specimen" : {
    "reference" : "Specimen/ExampleLipidSpecimen"
  }
}

```
