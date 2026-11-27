# Observation interpretation local codes in Fiji - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation interpretation local codes in Fiji**

## CodeSystem: Observation interpretation local codes in Fiji 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-obs-interpretation-cs | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:FijiObsInterpretationCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.6 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Observation Interpretation local codes in Fiji 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Fiji Observation Interpretation Value Set](ValueSet-fiji-obs-interpretation-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-obs-interpretation-cs",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-obs-interpretation-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.6"
  }],
  "version" : "0.9.1",
  "name" : "FijiObsInterpretationCS",
  "title" : "Observation interpretation local codes in Fiji",
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
  "description" : "Observation Interpretation local codes in Fiji",
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
    "code" : "interp1",
    "display" : "ExampleInterpretation1",
    "definition" : "Example Interpretation 1 (example only need to populate this code system)"
  }]
}

```
