# RespiratoryRateExample - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: RespiratoryRateExample

Profile: [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md)

**Observation Body Position**: Sitting position

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Patient encounter procedure; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**effective**: 2026-09-08 10:30:00+1000

**performer**: `FijiPractitionerExample`

**value**: 18 breaths/minute (Details: UCUM code/min = '/min')

**method**: Respiration observation (procedure)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "RespiratoryRateExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-respiratory-rate"]
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
      "code" : "9279-1",
      "display" : "Respiratory rate"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "effectiveDateTime" : "2026-09-08T10:30:00+10:00",
  "performer" : [{
    "reference" : "FijiPractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 18,
    "unit" : "breaths/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "248981007",
      "display" : "Respiration observation (procedure)"
    }]
  }
}

```
