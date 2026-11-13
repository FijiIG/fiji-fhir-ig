# Fiji Radiology/Diagnostic Findings Value Set - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Fiji Radiology/Diagnostic Findings Value Set 

 **References** 

* [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)
* [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-radiology-findings-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-radiology-findings-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.18"
  }],
  "version" : "0.9.0",
  "name" : "FijiRadiologyFindingsVS",
  "title" : "Fiji Radiology/Diagnostic Findings Value Set",
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
        "property" : "constraint",
        "op" : "=",
        "value" : "< 404684003 AND < 363679005"
      }]
    }]
  }
}

```
