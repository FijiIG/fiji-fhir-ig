# Example Body Height - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Example Body Height

Profile: [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md)

**status**: Final

**category**: Vital Signs

**code**: Body height

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-08 09:16:00+1000

**performer**: [Practitioner/FijiPractitionerExample](Practitioner/FijiPractitionerExample)

**value**: 178.5 cm (Details: UCUM codecm = 'cm')

**device**: [Device/example-height-measurement](Device/example-height-measurement)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-BodyHeight",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-height"]
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
      "code" : "8302-2",
      "display" : "Body height"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-08T09:16:00+10:00",
  "performer" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 178.5,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  },
  "device" : {
    "reference" : "Device/example-height-measurement"
  }
}

```
