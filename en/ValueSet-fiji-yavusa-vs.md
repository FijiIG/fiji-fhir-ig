# Fiji Yavusa ValueSet - Draft Fiji Core Implementation Guide v0.2.2

## ValueSet: Fiji Yavusa ValueSet 

 **References** 

* [Fiji iTaukei Affiliation](StructureDefinition-fiji-iTaukei-affiliation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-yavusa-vs",
  "url" : "https://fhir.health.gov.fj/ValueSet/fiji-yavusa",
  "version" : "0.2.2",
  "name" : "FijiYavusaVS",
  "title" : "Fiji Yavusa ValueSet",
  "status" : "active",
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
  "description" : "The set of yavusa codes recognised by the\nFiji Implementation Guide.",
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
      "system" : "https://fhir.health.gov.fj/CodeSystem/fiji-yavusa"
    }]
  }
}

```
