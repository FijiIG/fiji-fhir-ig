# Fiji Yasana CodeSystem - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Yasana CodeSystem**

## CodeSystem: Fiji Yasana CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-yasana | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiYasanaCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.10 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
A code system representing Yasana (province) largest administrative division codes in Fiji iTaukei society as recognised in Fiji, 
Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-yasana",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-yasana",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.10"
  }],
  "version" : "0.9.1",
  "name" : "FijiYasanaCS",
  "title" : "Fiji Yasana CodeSystem",
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
  "description" : "A code system representing Yasana (province) largest administrative division codes in Fiji iTaukei society as recognised in Fiji,\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
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
  "count" : 13,
  "concept" : [{
    "code" : "ba",
    "display" : "Ba",
    "definition" : "Ba"
  },
  {
    "code" : "nadroga-navosa"
  },
  {
    "code" : "ra"
  },
  {
    "code" : "tailevu"
  },
  {
    "code" : "naitasiri"
  },
  {
    "code" : "namosi"
  },
  {
    "code" : "serua"
  },
  {
    "code" : "rewa"
  },
  {
    "code" : "cakaudrove"
  },
  {
    "code" : "macuata"
  },
  {
    "code" : "bua",
    "display" : "Bua",
    "definition" : "Bua"
  },
  {
    "code" : "lau"
  },
  {
    "code" : "lomaiviti"
  }]
}

```
