# Fiji Radiology/Diagnostic Findings Value Set - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Fiji Radiology/Diagnostic Findings Value Set 

 
Fiji radiology findings including SNOMED CT concepts filtered for radiology and imaging findings used within an IPS context. 

 **References** 

* [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-radiology-findings-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-radiology-findings-vs",
  "version" : "0.1.1",
  "name" : "FijiRadiologyFindingsVS",
  "title" : "Fiji Radiology/Diagnostic Findings Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-20T22:55:52+00:00",
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
  "description" : "Fiji radiology findings including SNOMED CT concepts filtered for radiology and imaging findings used within an IPS context.",
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
        "value" : "descendant-of 404684003 |Clinical finding| AND descendant-of 363679005 |Imaging procedure|"
      }]
    }]
  }
}

```
