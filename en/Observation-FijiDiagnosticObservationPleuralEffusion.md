# Fiji Diagnostic Observation - Pleural Effusion - Draft Fiji Core Implementation Guide v0.2.1

## Example Observation: Fiji Diagnostic Observation - Pleural Effusion

Profile: [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)

**status**: Final

**category**: Radiology

**code**: Pleural effusion

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-28 09:30:00+1200

**performer**: [Practitioner/FijiRadiologistExample](Practitioner/FijiRadiologistExample)

**bodySite**: Thoracic structure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiDiagnosticObservationPleuralEffusion",
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
      "code" : "300999006",
      "display" : "Pleural effusion"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-28T09:30:00+12:00",
  "performer" : [{
    "reference" : "Practitioner/FijiRadiologistExample"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "113197003",
      "display" : "Thoracic structure"
    }]
  }
}

```
