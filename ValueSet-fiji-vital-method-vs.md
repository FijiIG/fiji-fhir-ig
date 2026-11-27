# Vital Measurement Method Value Set - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vital Measurement Method Value Set**

## ValueSet: Vital Measurement Method Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/ValueSet/fiji-vital-method-vs | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:FijiVitalMethodVS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.48.24 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
SNOMED CT concepts representing methods used to obtain vital sign measurements, including body temperature, blood pressure, body height, body weight, heart rate, oxygen saturation and respiratory rate. This may be extended as required including with local codes used in historic data. 

 **References** 

* [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md)
* [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md)
* [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)
* [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md)

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
  "id" : "fiji-vital-method-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-vital-method-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.24"
  }],
  "version" : "0.9.1",
  "name" : "FijiVitalMethodVS",
  "title" : "Vital Measurement Method Value Set",
  "status" : "draft",
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
  "description" : "SNOMED CT concepts representing methods used to obtain vital sign\nmeasurements, including body temperature, blood pressure, body height,\nbody weight, heart rate, oxygen saturation and respiratory rate.\nThis may be extended as required including with local codes used in historic data.",
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
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "89003005",
        "display" : "Oral temperature taking"
      },
      {
        "code" : "386725007",
        "display" : "Body temperature"
      },
      {
        "code" : "415882003",
        "display" : "Axillary temperature"
      },
      {
        "code" : "77938009",
        "display" : "Arterial pressure monitoring, invasive method"
      },
      {
        "code" : "17146006",
        "display" : "Arterial pressure monitoring, non-invasive method"
      },
      {
        "code" : "37931006",
        "display" : "Auscultation"
      },
      {
        "code" : "765172009",
        "display" : "Doppler ultrasound"
      },
      {
        "code" : "13385008",
        "display" : "Mediate auscultation"
      },
      {
        "code" : "113011001",
        "display" : "Palpation"
      },
      {
        "code" : "31813000",
        "display" : "Vascular oscillometry"
      },
      {
        "code" : "469311001",
        "display" : "Manual-inflation electronic sphygmomanometer, non-portable"
      },
      {
        "code" : "464069000",
        "display" : "Mercury manual sphygmomanometer"
      },
      {
        "code" : "57401000087101",
        "display" : "Measurement of orthostatic blood pressure"
      },
      {
        "code" : "414135002",
        "display" : "Estimated"
      },
      {
        "code" : "258104002",
        "display" : "Measured"
      },
      {
        "code" : "733985002",
        "display" : "Reported"
      },
      {
        "code" : "29303009",
        "display" : "Electrocardiographic procedure"
      },
      {
        "code" : "104847001",
        "display" : "Oxygen saturation measurement"
      },
      {
        "code" : "264598005",
        "display" : "Oximetry"
      },
      {
        "code" : "32750006",
        "display" : "Inspection"
      },
      {
        "code" : "239516002",
        "display" : "Monitoring procedure"
      },
      {
        "code" : "408867002",
        "display" : "Taking respiratory rate"
      }]
    }]
  }
}

```
