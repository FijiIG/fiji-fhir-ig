# Valueset of Fiji Health Administration Sub-divisions - Draft Fiji Core Implementation Guide v0.2.0

## ValueSet: Valueset of Fiji Health Administration Sub-divisions 

 
A valueset containing Fiji Health Administration sub-divisions 

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
  "id" : "fiji-sub-division-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-sub-division-vs",
  "version" : "0.2.0",
  "name" : "FijiSubDivisionVS",
  "title" : "Valueset of Fiji Health Administration Sub-divisions",
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
  "description" : "A valueset containing Fiji Health Administration sub-divisions",
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
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-sub-division-cs"
    }]
  }
}

```
