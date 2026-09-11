# Health administrative division codes in Fiji - Draft Fiji Core Implementation Guide v0.2.0

## CodeSystem: Health administrative division codes in Fiji 

 
Health administrative division codes in Fiji 

This Code system is referenced in the definition of the following value sets:

* [Valueset of Fiji Health Administration Divisions](ValueSet-fiji-division-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-division-cs",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-division-cs",
  "version" : "0.2.0",
  "name" : "FijiDivisionCS",
  "title" : "Health administrative division codes in Fiji",
  "status" : "draft",
  "date" : "2026-09-11T02:30:38+00:00",
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
  "description" : "Health administrative division codes in Fiji",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "central",
    "display" : "Central",
    "definition" : "Central division covers capital regions and surrounding provinces"
  },
  {
    "code" : "eastern",
    "display" : "Eastern",
    "definition" : "Eastern division Covers outer islands and remote areas like Levuka and Rotuma"
  },
  {
    "code" : "western",
    "display" : "Western",
    "definition" : "Western division covers western side of Viti Levu and nearby islands"
  },
  {
    "code" : "northern",
    "display" : "Northern",
    "definition" : "Northern division Covers Vanua Levu and Taveuni"
  }]
}

```
