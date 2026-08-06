# Condition/Diagnosis code valueset - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Condition/Diagnosis code valueset 

 
Condition Code valueset for Fiji Core. Proposed valueset is taken from SNOMED codes curated for International Patient Summary. Includes "clinical finding" codes and codes for "situation with explicit content". 

 **References** 

* [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md)
* [Fiji Condition](StructureDefinition-fiji-condition.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-condition-code-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-condition-code-vs",
  "version" : "0.1.1",
  "name" : "FijiConditionCodeVS",
  "title" : "Condition/Diagnosis code valueset",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-06T07:01:07+00:00",
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
  "description" : "Condition Code valueset for Fiji Core. \nProposed valueset is taken from SNOMED codes curated for International Patient Summary.\nIncludes \"clinical finding\"  codes and codes for \"situation with explicit content\".",
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
        "value" : "< 404684003 |Clinical finding| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 243796009 |Situation with explicit context| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    }]
  }
}

```
