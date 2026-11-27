# Ethnicity - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ethnicity**

## CodeSystem: Ethnicity 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-ethnicity | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiEthnicityCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.14 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Ethnicity as recorded by Fiji MHMS 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Fiji Patient Ethnicity Value Set](ValueSet-fiji-ethnicity.md)
* [Fiji Patient Occupation Value Set](ValueSet-fiji-occupation.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-ethnicity",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-ethnicity",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.14"
  }],
  "version" : "0.9.1",
  "name" : "FijiEthnicityCS",
  "title" : "Ethnicity",
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
  "description" : "Ethnicity as recorded by Fiji MHMS",
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
  "count" : 3,
  "concept" : [{
    "code" : "iTaukei",
    "display" : "iTaukei",
    "definition" : "iTaukei"
  },
  {
    "code" : "fijiIndianDescent",
    "display" : "Fijian of Indian Descent",
    "definition" : "Fijian of Indian Descent"
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "Other"
  }]
}

```
