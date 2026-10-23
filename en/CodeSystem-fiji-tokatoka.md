# Fiji Tokatoka - Draft Fiji Core Implementation Guide v0.3.0

## CodeSystem: Fiji Tokatoka 

This Code system is referenced in the definition of the following value sets:

* [Fiji Tokatoka ValueSet](ValueSet-fiji-tokatoka-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-tokatoka",
  "url" : "https://fhir.health.gov.fj/CodeSystem/fiji-tokatoka",
  "version" : "0.3.0",
  "name" : "FijiTokatokaCS",
  "title" : "Fiji Tokatoka",
  "status" : "active",
  "experimental" : false,
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
  "description" : "A code system representing tokatoka recognised in Fiji,\nfor use in healthcare information exchange where\nidentification of a tokatoka is required.\n\nCodes and display names must be sourced from an\nauthoritative dataset approved for the intended use.\nAccess, disclosure and use of customary information\nmust respect applicable Fiji laws and governance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "caseSensitive" : true,
  "content" : "fragment"
}

```
