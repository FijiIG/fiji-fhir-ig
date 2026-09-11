# Fiji Observation Interpretation Value Set - Draft Fiji Core Implementation Guide v0.2.0

## ValueSet: Fiji Observation Interpretation Value Set 

 
Valueset for interpretations of Observations for Fiji. Used for interpretaton element for Observations and derived profiles (eg. Vital signs) Values from HL7 v3 Code System ObservationInterpretation with added values from WHO/Fiji usage. 

 **References** 

* [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md)
* [BMI Vitals - Fiji](StructureDefinition-fiji-vital-bmi.md)
* [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md)
* [Head circumference Vitals - Fiji](StructureDefinition-fiji-vital-head-circumference.md)
* [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)
* [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md)
* [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md)
* [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md)
* [Weight Vitals - Fiji](StructureDefinition-fiji-vital-weight.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-obs-interpretation-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-obs-interpretation-vs",
  "version" : "0.2.0",
  "name" : "FijiObsInterpretationVS",
  "title" : "Fiji Observation Interpretation Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T02:30:38+00:00",
  "publisher" : "MHMS Fiji",
  "contact" : [{
    "name" : "MHMS Fiji",
    "telecom" : [{
      "system" : "url",
      "value" : "https://fhir.health.gov.fj"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fhir.health.gov.fj"
    }]
  }],
  "description" : "Valueset for interpretations of Observations for Fiji.\nUsed for interpretaton element for Observations and derived profiles (eg. Vital signs)\nValues from  HL7 v3 Code System ObservationInterpretation with added values from WHO/Fiji usage.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
    },
    {
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-obs-interpretation-cs"
    }]
  }
}

```
