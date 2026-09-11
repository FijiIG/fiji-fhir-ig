# Body temperature vital observation - Draft Fiji Core Implementation Guide v0.2.0

## Example Observation: Body temperature vital observation

Profile: [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md)

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**effective**: 2026-09-08 09:30:00+1200

**performer**: [Practitioner/FijiPractitionerExample](Practitioner/FijiPractitionerExample)

**value**: 39.1 °C (Details: UCUM codeCel = 'Cel')

**interpretation**: High

**bodySite**: Structure of oral cavity

**method**: Oral temperature taking

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 36.1 °C (Details: UCUM codeCel = 'Cel') | 38 °C (Details: UCUM codeCel = 'Cel') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FijiBodyTemperatureExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-body-temperature"]
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
      "code" : "8310-5",
      "display" : "Body temperature"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-08T09:30:00+12:00",
  "performer" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "valueQuantity" : {
    "value" : 39.1,
    "unit" : "°C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "74262004",
      "display" : "Structure of oral cavity"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "89003005",
      "display" : "Oral temperature taking"
    }]
  },
  "referenceRange" : [{
    "low" : {
      "value" : 36.1,
      "unit" : "°C",
      "system" : "http://unitsofmeasure.org",
      "code" : "Cel"
    },
    "high" : {
      "value" : 38,
      "unit" : "°C",
      "system" : "http://unitsofmeasure.org",
      "code" : "Cel"
    }
  }]
}

```
