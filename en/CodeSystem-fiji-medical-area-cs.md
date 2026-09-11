# Health administrative medical area codes in Fiji - Draft Fiji Core Implementation Guide v0.2.0

## CodeSystem: Health administrative medical area codes in Fiji 

 
Health administrative medical area codes in Fiji 

This Code system is referenced in the definition of the following value sets:

* [Valueset of Fiji Health Administration medical areas](ValueSet-fiji-medical-area-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-medical-area-cs",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-medical-area-cs",
  "version" : "0.2.0",
  "name" : "FijiMedicalAreaCS",
  "title" : "Health administrative medical area codes in Fiji",
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
  "description" : "Health administrative medical area codes in Fiji",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "area1",
    "display" : "Area1",
    "definition" : "Medical area 1 (example only need to populate this code system)"
  }]
}

```
