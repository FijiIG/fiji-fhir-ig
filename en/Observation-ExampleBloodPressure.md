# ExampleBloodPressure - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: ExampleBloodPressure

Profile: [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md)

**Observation Body Position**: Sitting position

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-07 10:30:00+1000

**interpretation**: High

> **component****code**: Systolic blood pressure**value**: 128 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')**interpretation**: Normal

> **component****code**: Diastolic blood pressure**value**: 82 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleBloodPressure",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-blood-pressure"]
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
      "code" : "85354-9",
      "display" : "Blood pressure panel with all children optional"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-07T10:30:00+10:00",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6"
      }]
    },
    "valueQuantity" : {
      "value" : 128,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "N",
        "display" : "Normal"
      }]
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4"
      }]
    },
    "valueQuantity" : {
      "value" : 82,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "H",
        "display" : "High"
      }]
    }]
  }]
}

```
