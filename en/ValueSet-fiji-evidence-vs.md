# Condition Evidence Value Set for Fiji Core IG - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Condition Evidence Value Set for Fiji Core IG 

 
Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases. 

 **References** 

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
  "id" : "fiji-evidence-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-evidence-vs",
  "version" : "0.1.1",
  "name" : "FijiEvidenceVS",
  "title" : "Condition Evidence Value Set for Fiji Core IG",
  "status" : "draft",
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
  "description" : "Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases.",
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
        "value" : "(< 404684003 |Clinical finding| MINUS < 64572001 |Disease|) AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 71388002 |Procedure| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "LP29684-5"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "LP29700-9"
      }]
    }]
  }
}

```
