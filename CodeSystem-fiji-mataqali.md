# Fiji Mataqali CodeSystem - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Mataqali CodeSystem**

## CodeSystem: Fiji Mataqali CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-mataqali | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiMataqaliCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.3 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
A code system representing mataqali recognised in Fiji, for use in healthcare information exchange where identification of a mataqali is required. 
Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Fiji Mataqali Value Set](ValueSet-fiji-mataqali.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-mataqali",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-mataqali",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.3"
  }],
  "version" : "0.9.1",
  "name" : "FijiMataqaliCS",
  "title" : "Fiji Mataqali CodeSystem",
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
  "description" : "A code system representing mataqali recognised in Fiji,\nfor use in healthcare information exchange where\nidentification of a mataqali is required.\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
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
    "code" : "tova-natokalau",
    "display" : "Tova Natokalau",
    "definition" : "Tova Natokalau"
  }]
}

```
