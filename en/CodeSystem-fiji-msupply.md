# Fiji MSupply Medication CodeSystem - Draft Fiji Core Implementation Guide v0.9.0

## CodeSystem: Fiji MSupply Medication CodeSystem 

This Code system is referenced in the definition of the following value sets:

* [Fiji Medication ValueSet](ValueSet-fiji-med-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-msupply",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-msupply",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.14"
  }],
  "version" : "0.9.0",
  "name" : "FijiMedCS",
  "title" : "Fiji MSupply Medication CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-19T06:50:17+00:00",
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
  "description" : "A code system representing legacy MSupply medication codes used in Fiji,\nfor use in healthcare information exchange with legacy medication dispense information\nand until a standardised codesystem for medications is agreed.\n\nCodes and display names should be sourced from the\nMSupply codes used in Fiji for dispensing medication.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "caseSensitive" : true,
  "content" : "complete"
}

```
