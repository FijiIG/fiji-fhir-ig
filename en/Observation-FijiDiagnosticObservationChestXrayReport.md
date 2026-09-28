# Fiji Diagnostic Observation - Chest X-ray Report - Draft Fiji Core Implementation Guide v0.2.1

## Example Observation: Fiji Diagnostic Observation - Chest X-ray Report

Profile: [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)

**status**: Final

**category**: Radiology

**code**: Chest X-ray abnormal

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-28 09:30:00+1200

**performer**: [Practitioner/FijiRadiologistExample](Practitioner/FijiRadiologistExample)

**hasMember**: 

* [Observation Pulmonary consolidation](Observation-FijiDiagnosticObservationPulmonaryConsolidation.md)
* [Observation Pleural effusion](Observation-FijiDiagnosticObservationPleuralEffusion.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiDiagnosticObservationChestXrayReport",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "RAD",
      "display" : "Radiology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "168594009",
      "display" : "Chest X-ray abnormal"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-28T09:30:00+12:00",
  "performer" : [{
    "reference" : "Practitioner/FijiRadiologistExample"
  }],
  "hasMember" : [{
    "reference" : "Observation/FijiDiagnosticObservationPulmonaryConsolidation"
  },
  {
    "reference" : "Observation/FijiDiagnosticObservationPleuralEffusion"
  }]
}

```
