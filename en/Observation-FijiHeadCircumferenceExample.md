# Fiji Head Circumference Example - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Fiji Head Circumference Example

Profile: [Head circumference Vitals - Fiji](StructureDefinition-fiji-vital-head-circumference.md)

**status**: Final

**category**: Vital Signs

**code**: Head Occipital-frontal circumference

**subject**: [Patient/FijiPatientChildExample](Patient/FijiPatientChildExample)

**effective**: 2026-09-09 10:15:00+1200

**value**: 42.5 cm (Details: UCUM codecm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiHeadCircumferenceExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-head-circumference"]
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
      "code" : "9843-4",
      "display" : "Head Occipital-frontal circumference"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientChildExample"
  },
  "effectiveDateTime" : "2026-09-09T10:15:00+12:00",
  "valueQuantity" : {
    "value" : 42.5,
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
