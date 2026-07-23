# Heart Rate LOINC Codes - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Heart Rate LOINC Codes 

 
LOINC codes for heart rate measurements, spot or average. 

 **References** 

* [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "heart-rate-loinc",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/heart-rate-loinc",
  "version" : "0.1.1",
  "name" : "HeartRateVS",
  "title" : "Heart Rate LOINC Codes",
  "status" : "draft",
  "date" : "2026-07-23T07:16:02+00:00",
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
  "description" : "LOINC codes for heart rate measurements, spot or average.",
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
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "8867-4",
        "display" : "Heart rate"
      },
      {
        "code" : "103205-1",
        "display" : "Mean heart rate"
      }]
    }]
  }
}

```
