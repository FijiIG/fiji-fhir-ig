# Fiji Korodina - Draft Fiji Core Implementation Guide v0.2.2

## CodeSystem: Fiji Korodina 

This Code system is referenced in the definition of the following value sets:

* [Fiji Korodina ValueSet](ValueSet-fiji-korodina-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-korodina",
  "url" : "https://fhir.health.gov.fj/CodeSystem/fiji-korodina",
  "version" : "0.2.2",
  "name" : "FijiKorodinaCS",
  "title" : "Fiji Korodina",
  "status" : "active",
  "experimental" : false,
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
  "description" : "A code system representing korodina (wards) in Fiji\nfor use in healthcare information exchange.\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "content" : "complete"
}

```
