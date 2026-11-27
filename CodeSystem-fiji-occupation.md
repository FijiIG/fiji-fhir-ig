# Patient Occupation - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Occupation**

## CodeSystem: Patient Occupation 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-occupation | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:FijiOccupationCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.16 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Patient Occumpation as recorded by Fiji MHMS 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-occupation",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-occupation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.16"
  }],
  "version" : "0.9.1",
  "name" : "FijiOccupationCS",
  "title" : "Patient Occupation",
  "status" : "draft",
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
  "description" : "Patient Occumpation as recorded by Fiji MHMS",
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
    "code" : "teacher",
    "display" : "Teacher",
    "definition" : "Teacher"
  }]
}

```
