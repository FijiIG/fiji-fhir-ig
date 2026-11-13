# Condition/Diagnosis code valueset - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Condition/Diagnosis code valueset 

 **References** 

* [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md)
* [Fiji Condition](StructureDefinition-fiji-condition.md)
* [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md)

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
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.4"
  }],
  "version" : "0.9.0",
  "name" : "FijiConditionCodeVS",
  "title" : "Condition/Diagnosis code valueset",
  "status" : "active",
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
        "property" : "constraint",
        "op" : "=",
        "value" : "< 404684003 AND ^ 816080008"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 243796009 AND ^ 816080008"
      }]
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10-am"
    }]
  }
}

```
