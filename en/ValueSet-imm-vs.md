# Immunization ValueSet - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Immunization ValueSet 

 
Immunization valueset based on until Fiji-Pacific valueset is developed 

 **References** 

* [Fiji Immunization](StructureDefinition-fiji-immunization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "imm-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/imm-vs",
  "version" : "0.1.1",
  "name" : "ImmVS",
  "title" : "Immunization ValueSet",
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
  "description" : "Immunization valueset based on until Fiji-Pacific valueset is developed",
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
      "system" : "http://hl7.org/fhir/sid/cvx"
    }]
  }
}

```
