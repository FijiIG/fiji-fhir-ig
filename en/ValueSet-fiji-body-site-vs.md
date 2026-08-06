# Fiji Body Site (Anatomical Structure) Value Set - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Fiji Body Site (Anatomical Structure) Value Set 

 
Valueset for bodysite/anatomical structures. Used for Condition.bodySite Values from SNOMED CT anatomical structures. 

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
  "id" : "fiji-body-site-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs",
  "version" : "0.1.1",
  "name" : "FijiBodySiteVS",
  "title" : "Fiji Body Site (Anatomical Structure) Value Set",
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
  "description" : "Valueset for bodysite/anatomical structures.\nUsed for Condition.bodySite\nValues from SNOMED CT anatomical structures.",
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
        "value" : "< 442083009 |Anatomical or acquired body structure (body structure)|"
      }]
    }]
  }
}

```
