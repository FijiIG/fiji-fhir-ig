# Health administrative nursing zone codes in Fiji - Draft Fiji Core Implementation Guide v0.9.0

## CodeSystem: Health administrative nursing zone codes in Fiji 

This Code system is referenced in the definition of the following value sets:

* [Valueset of Fiji Health Administration nursing zones](ValueSet-fiji-nursing-zone.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-nursingzone",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-nursingzone",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.16.5"
  }],
  "version" : "0.9.0",
  "name" : "FijiNursingZoneCS",
  "title" : "Health administrative nursing zone codes in Fiji",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-13T04:51:51+00:00",
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
  "description" : "Health administrative nursing zone codes in Fiji",
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
    "code" : "zone1",
    "display" : "Zone1",
    "definition" : "Nursing zone 1 (example only need to populate this code system)"
  }]
}

```
