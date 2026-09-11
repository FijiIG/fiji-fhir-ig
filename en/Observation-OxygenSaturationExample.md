# Oxygen Saturation Observation - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Oxygen Saturation Observation

Profile: [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md)

**status**: Final

**category**: Vital Signs

**code**: Oxygen saturation in Arterial blood

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Patient encounter procedure; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**effective**: 2026-09-08 10:15:00+1000

**value**: 97 % (Details: UCUM code% = '%')

**interpretation**: Normal

**device**: [Device/PulseOximeterExample](Device/PulseOximeterExample)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "OxygenSaturationExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-oxygen-saturation"]
  },
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
      "code" : "2708-6",
      "display" : "Oxygen saturation in Arterial blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "effectiveDateTime" : "2026-09-08T10:15:00+10:00",
  "valueQuantity" : {
    "value" : 97,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "device" : {
    "reference" : "Device/PulseOximeterExample"
  }
}

```
