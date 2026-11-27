# Condition Evidence Value Set - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition Evidence Value Set**

## ValueSet: Condition Evidence Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/ValueSet/fiji-evidence-vs | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiEvidenceVS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.48.8 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases. 

 **References** 

* [Fiji Condition](StructureDefinition-fiji-condition.md)

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
  "id" : "fiji-evidence-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-evidence-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.8"
  }],
  "version" : "0.9.1",
  "name" : "FijiEvidenceVS",
  "title" : "Condition Evidence Value Set",
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
        "value" : "(< 404684003 MINUS < 64572001)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 71388002"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "ancestor",
        "op" : "=",
        "value" : "LP29684-5"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "ancestor",
        "op" : "=",
        "value" : "LP74263-2"
      }]
    }]
  }
}

```
