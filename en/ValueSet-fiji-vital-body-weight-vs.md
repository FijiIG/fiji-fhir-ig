# Fiji Vital Sign Body Weight ValueSet - Draft Fiji Core Implementation Guide v0.2.0

## ValueSet: Fiji Vital Sign Body Weight ValueSet 

 
Concepts representing options that provide further context for body weight coding. (eg. Birth Weight…) NOTE: This is not currently used but may be used in future when a full valueset has been developed 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-vital-body-weight-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-vital-body-weight-vs",
  "version" : "0.2.0",
  "name" : "FijiVitalBodyWeightVS",
  "title" : "Fiji Vital Sign Body Weight ValueSet",
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
  "description" : "Concepts representing options that provide further context for body weight coding. (eg.  Birth Weight...)\nNOTE: This is not currently used but may be used in future when a full valueset has been developed",
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
        "code" : "29463-7",
        "display" : "Body weight"
      },
      {
        "code" : "8339-4",
        "display" : "Birth weight Measured"
      }]
    }]
  }
}

```
