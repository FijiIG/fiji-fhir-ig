# Encounter reason code valueset - Draft Fiji Core Implementation Guide v0.2.1

## ValueSet: Encounter reason code valueset 

 **References** 

* [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-encounter-reason-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-encounter-reason-vs",
  "version" : "0.2.1",
  "name" : "FijiEncounterReasonVS",
  "title" : "Encounter reason code valueset",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-06T07:16:04+00:00",
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
  "description" : "Encounter reason valueset for Fiji Core. \nProposed valueset is taken from SNOMED Problem/Diagnosis and Procedure refsets.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "^ 32570581000036105|Problem/Diagnosis reference set| OR ^ 32570141000036105|Procedure foundation reference set|"
      }]
    }]
  }
}

```
