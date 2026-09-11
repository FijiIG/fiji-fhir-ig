# Fiji Vital Sign Measurement Method ValueSet - Draft Fiji Core Implementation Guide v0.2.0

## ValueSet: Fiji Vital Sign Measurement Method ValueSet 

 
SNOMED CT concepts representing methods used to obtain vital sign measurements, including body temperature, blood pressure, body height, body weight, heart rate, oxygen saturation and respiratory rate. This may be extended as required including with local codes used in historic data. 

 **References** 

* [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md)
* [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md)
* [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)
* [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-vital-method-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-vital-method-vs",
  "version" : "0.2.0",
  "name" : "FijiVitalMethodVS",
  "title" : "Fiji Vital Sign Measurement Method ValueSet",
  "status" : "draft",
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
        "display" : "Tympanic temperature taking"
      },
      {
        "code" : "415882003",
        "display" : "Axillary temperature taking"
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
        "code" : "268447006",
        "display" : "Doppler studies"
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
      }]
    }]
  }
}

```
