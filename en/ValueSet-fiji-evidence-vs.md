# Condition Evidence Value Set for Fiji Core IG - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Condition Evidence Value Set for Fiji Core IG 

 **References** 

* [Fiji Condition](StructureDefinition-fiji-condition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-evidence-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-evidence-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.8"
  }],
  "version" : "0.9.0",
  "name" : "FijiEvidenceVS",
  "title" : "Condition Evidence Value Set for Fiji Core IG",
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
        "property" : "constraint",
        "op" : "=",
        "value" : "(< 404684003 MINUS < 64572001) AND ^ 816080008"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 71388002 AND ^ 816080008"
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
