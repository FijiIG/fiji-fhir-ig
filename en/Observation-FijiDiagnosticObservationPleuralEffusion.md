# Fiji Diagnostic Observation - Pleural Effusion - Draft Fiji Core Implementation Guide v0.9.0

## Example Observation: Fiji Diagnostic Observation - Pleural Effusion

Profile: [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)

**status**: Final

**category**: Radiology

**code**: Basal pneumonia

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-28 09:30:00+1200

**performer**: [Michael James Smith(official) (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#RAD-12345)](Practitioner-FijiRadiologistExample.md)

**bodySite**: Bone structure of rib



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
      "display" : "Basal pneumonia"
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
      "display" : "Bone structure of rib"
    }]
  }
}

```
