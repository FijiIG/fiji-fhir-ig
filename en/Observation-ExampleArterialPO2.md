# Example arterial oxygen partial pressure - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Example arterial oxygen partial pressure

Profile: [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md)

**status**: Final

**category**: Laboratory

**code**: Oxygen [Partial pressure] in Arterial blood

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-09 10:30:00+1200

**value**: 85 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleArterialPO2",
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
      "code" : "2703-7",
      "display" : "Oxygen [Partial pressure] in Arterial blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-09T10:30:00+12:00",
  "valueQuantity" : {
    "value" : 85,
    "system" : "http://unitsofmeasure.org",
    "code" : "mm[Hg]"
  }
}

```
