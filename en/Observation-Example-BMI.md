# Example-BMI - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Example-BMI

Profile: [BMI Vitals - Fiji](StructureDefinition-fiji-vital-bmi.md)

**status**: Final

**category**: Vital Signs

**code**: Body mass index (BMI) [Ratio]

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Patient encounter procedure; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**effective**: 2026-09-07

**value**: 24.8 kg/m2 (Details: UCUM codekg/m2 = 'kg/m2')

**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-BMI",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-bmi"]
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
      "code" : "39156-5",
      "display" : "Body mass index (BMI) [Ratio]"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "effectiveDateTime" : "2026-09-07",
  "valueQuantity" : {
    "value" : 24.8,
    "unit" : "kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }]
}

```
