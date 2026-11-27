# Fiji Tokatoka CodeSystem - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Tokatoka CodeSystem**

## CodeSystem: Fiji Tokatoka CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-tokatoka | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiTokatokaCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.9 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
A code system representing tokatoka recognised in Fiji, for use in healthcare information exchange where identification of a tokatoka is required. 
Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Fiji Tokatoka Value Set](ValueSet-fiji-tokatoka.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-tokatoka",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-tokatoka",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.9"
  }],
  "version" : "0.9.1",
  "name" : "FijiTokatokaCS",
  "title" : "Fiji Tokatoka CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-27T08:01:49+00:00",
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
  "description" : "A code system representing tokatoka recognised in Fiji,\nfor use in healthcare information exchange where\nidentification of a tokatoka is required.\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "tk-bureta",
    "display" : "Tk Bureta",
    "definition" : "Tk Bureta"
  }]
}

```
