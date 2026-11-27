# Imaging Report Value Set - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Imaging Report Value Set**

## ValueSet: Imaging Report Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/ValueSet/fiji-imaging-report-vs | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiImagingReportVS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.48.33 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Fiji imaging report including SNOMED CT concepts for radiology report and imaging report 

 **References** 

* [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-imaging-report-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-imaging-report-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.33"
  }],
  "version" : "0.9.1",
  "name" : "FijiImagingReportVS",
  "title" : "Imaging Report Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-27T08:01:49+00:00",
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
  "description" : "Fiji imaging report including SNOMED CT concepts for radiology report and imaging report",
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
        "value" : "<<  371527006"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<<  4201000179104"
      }]
    }]
  }
}

```
