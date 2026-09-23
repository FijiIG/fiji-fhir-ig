# Example Lipid Panel - Draft Fiji Core Implementation Guide v0.2.1

## Example Observation: Example Lipid Panel

Profile: [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md)

**status**: Final

**category**: Laboratory

**code**: Lipid panel

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-23 09:00:00+1200

**issued**: 2026-09-23 12:00:00+1200

**specimen**: [Specimen: status = final; type = Serum specimen; receivedTime = 2026-09-23 09:15:00+1200](Specimen-ExampleLipidSpecimen.md)

**hasMember**: 

* [Observation Cholesterol [Mass/volume] in Serum or Plasma](Observation-ExampleTotalCholesterol.md)
* [Observation Cholesterol in HDL [Mass/volume] in Serum or Plasma](Observation-ExampleHDLCholesterol.md)
* [Observation Cholesterol in LDL [Mass/volume] in Serum or Plasma](Observation-ExampleLDLCholesterol.md)
* [Observation Triglyceride [Mass/volume] in Serum or Plasma](Observation-ExampleTriglycerides.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleLipidPanel",
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
      "code" : "24331-1",
      "display" : "Lipid panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-23T09:00:00+12:00",
  "issued" : "2026-09-23T12:00:00+12:00",
  "specimen" : {
    "reference" : "Specimen/ExampleLipidSpecimen"
  },
  "hasMember" : [{
    "reference" : "Observation/ExampleTotalCholesterol"
  },
  {
    "reference" : "Observation/ExampleHDLCholesterol"
  },
  {
    "reference" : "Observation/ExampleLDLCholesterol"
  },
  {
    "reference" : "Observation/ExampleTriglycerides"
  }]
}

```
