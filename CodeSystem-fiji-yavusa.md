# Fiji Yavusa CodeSystem - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Yavusa CodeSystem**

## CodeSystem: Fiji Yavusa CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-yavusa | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiYavusaCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.11 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
A code system representing Yavusa in Fiji for use in healthcare information exchange. 
Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Fiji Yavusa Value Set](ValueSet-fiji-yavusa.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-yavusa",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-yavusa",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.11"
  }],
  "version" : "0.9.1",
  "name" : "FijiYavusaCS",
  "title" : "Fiji Yavusa CodeSystem",
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
  "description" : "A code system representing Yavusa in Fiji\nfor use in healthcare information exchange.\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
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
    "code" : "kai-narocake",
    "display" : "Kai Narocake",
    "definition" : "Kai Narocake"
  }]
}

```
