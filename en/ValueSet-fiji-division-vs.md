# Valueset of Fiji Health Administration Divisions - Draft Fiji Core Implementation Guide v0.2.2

## ValueSet: Valueset of Fiji Health Administration Divisions 

 **References** 

* [Fiji Health Administration Zone](StructureDefinition-fiji-admin-zone.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-division-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-division-vs",
  "version" : "0.2.2",
  "name" : "FijiDivisionVS",
  "title" : "Valueset of Fiji Health Administration Divisions",
  "status" : "draft",
  "date" : "2026-10-14T05:21:25+00:00",
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
  "description" : "A valueset containing Fiji Health Administration Divisions",
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
      "system" : "https://fhir.health.gov.fj/CodeSystem/fiji-division"
    }]
  }
}

```
