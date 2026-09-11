# Observation interpretation local codes in Fiji - Draft Fiji Core Implementation Guide v0.2.0

## CodeSystem: Observation interpretation local codes in Fiji 

 
Observation interpretation local codes in Fiji 

This Code system is referenced in the definition of the following value sets:

* [Fiji Observation Interpretation Value Set](ValueSet-fiji-obs-interpretation-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-obs-interpretation-cs",
  "url" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-obs-interpretation-cs",
  "version" : "0.2.0",
  "name" : "FijiObsInterpretationCS",
  "title" : "Observation interpretation local codes in Fiji",
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
  "description" : "Observation interpretation local codes in Fiji",
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
    "code" : "interp1",
    "display" : "ExampleInterpretation1",
    "definition" : "Example Interpretation 1 (example only need to populate this code system)"
  }]
}

```
