# Example HDL Cholesterol - Draft Fiji Core Implementation Guide v0.2.1

## Example Observation: Example HDL Cholesterol

Profile: [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md)

**status**: Final

**category**: Laboratory

**code**: Cholesterol in HDL [Mass/volume] in Serum or Plasma

**subject**: [Patient/FijiExamplePatient](Patient/FijiExamplePatient)

**effective**: 2026-09-23 09:00:00+1200

**value**: 1.3 mmol/L (Details: UCUM codemmol/L = 'mmol/L')

**specimen**: [Specimen: status = final; type = Serum specimen; receivedTime = 2026-09-23 09:15:00+1200](Specimen-ExampleLipidSpecimen.md)



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
    "reference" : "Patient/FijiExamplePatient"
  },
  "effectiveDateTime" : "2026-09-23T09:00:00+12:00",
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
