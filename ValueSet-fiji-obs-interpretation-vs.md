# Fiji Observation Interpretation Value Set - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Observation Interpretation Value Set**

## ValueSet: Fiji Observation Interpretation Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/ValueSet/fiji-obs-interpretation-vs | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiObsInterpretationVS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.48.16 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
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

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-obs-interpretation-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-obs-interpretation-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.16"
  }],
  "version" : "0.9.1",
  "name" : "FijiObsInterpretationVS",
  "title" : "Fiji Observation Interpretation Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-27T08:01:49+00:00",
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
