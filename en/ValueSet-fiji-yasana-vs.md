# Fiji Yasana ValueSet - Draft Fiji Core Implementation Guide v0.3.0

## ValueSet: Fiji Yasana ValueSet 

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
  "id" : "fiji-yasana-vs",
  "url" : "https://fhir.health.gov.fj/ValueSet/fiji-yasana",
  "version" : "0.3.0",
  "name" : "FijiYasanaVS",
  "title" : "Fiji Yasana ValueSet",
  "status" : "active",
  "date" : "2026-10-23T04:23:18+00:00",
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
  "description" : "The set of yasana codes recognised by the\nFiji Implementation Guide.",
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
      "system" : "https://fhir.health.gov.fj/CodeSystem/fiji-tikina"
    }]
  }
}

```
