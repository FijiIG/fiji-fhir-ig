# HeartRateExample - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: HeartRateExample

Profile: [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)

**Observation Body Position**: Sitting position

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Patient encounter procedure; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**effective**: 2026-09-08 09:30:00+1000

**value**: 78 /min (Details: UCUM code/min = '/min')

**bodySite**: Structure of radial artery

**method**: Palpation



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HeartRateExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-heart-rate"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "33586001",
        "display" : "Sitting position"
      }]
    }
  }],
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
      "code" : "8867-4",
      "display" : "Heart rate"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "effectiveDateTime" : "2026-09-08T09:30:00+10:00",
  "valueQuantity" : {
    "value" : 78,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45631007",
      "display" : "Structure of radial artery"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "113011001",
      "display" : "Palpation"
    }]
  }
}

```
