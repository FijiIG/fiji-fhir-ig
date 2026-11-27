# Health administrative zones in Fiji - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health administrative zones in Fiji**

## CodeSystem: Health administrative zones in Fiji 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/CodeSystem/fiji-admin-zones | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiAdminZonesCS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.16.12 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Health administrative zones in Fiji 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Health Administrative Zones Value Set](ValueSet-fiji-admin-zones.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-admin-zones",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-admin-zones",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.12"
  }],
  "version" : "0.9.1",
  "name" : "FijiAdminZonesCS",
  "title" : "Health administrative zones in Fiji",
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
  "description" : "Health administrative zones in Fiji",
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
  "count" : 4,
  "concept" : [{
    "code" : "division",
    "display" : "Division",
    "definition" : "Division - highest level health admin zone"
  },
  {
    "code" : "subdivision",
    "display" : "Subdivision",
    "definition" : "Subdivision - health admin zone part of a Division"
  },
  {
    "code" : "medicalarea",
    "display" : "MedicalArea",
    "definition" : "Medical Area - health admin zone part of a Subdivision"
  },
  {
    "code" : "nursingzone",
    "display" : "NursingZone",
    "definition" : "Nursing Zone - health admin zone part of a Medical Area"
  }]
}

```
