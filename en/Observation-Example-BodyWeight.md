# Example Body Weight - Draft Fiji Core Implementation Guide v0.2.2

## Example Observation: Example Body Weight

Profile: [Weight Vitals - Fiji](StructureDefinition-fiji-vital-weight.md)

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Outpatient consultation; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**effective**: 2026-09-08 09:15:00+1000

**performer**: [Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345)](Practitioner-FijiPractitionerExample.md)

**value**: 98.4 kg (Details: UCUM codekg = 'kg')

**device**: [Device/example-weighing-scale](Device/example-weighing-scale)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-BodyWeight",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-weight"]
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
      "code" : "29463-7",
      "display" : "Body weight"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "effectiveDateTime" : "2026-09-08T09:15:00+10:00",
  "performer" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 98.4,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "device" : {
    "reference" : "Device/example-weighing-scale"
  }
}

```
