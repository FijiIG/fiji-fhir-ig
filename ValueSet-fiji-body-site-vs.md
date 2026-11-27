# Body Site Value Set - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Site Value Set**

## ValueSet: Body Site Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs | *Version*:0.9.1 |
| Active as of 2026-11-27 | *Computable Name*:FijiBodySiteVS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.48.3 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Valueset for bodysite/anatomical structures. Used for Condition.bodySite and Immunization.site Values from SNOMED CT anatomical structures. 

 **References** 

* [Fiji Condition](StructureDefinition-fiji-condition.md)
* [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)
* [Fiji Immunization](StructureDefinition-fiji-immunization.md)
* [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md)
* [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md)
* [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)

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
  "id" : "fiji-body-site-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.3"
  }],
  "version" : "0.9.1",
  "name" : "FijiBodySiteVS",
  "title" : "Body Site Value Set",
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
  "description" : "Valueset for bodysite/anatomical structures.\nUsed for Condition.bodySite and Immunization.site\nValues from SNOMED CT anatomical structures.",
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
        "value" : "< 442083009"
      }]
    }]
  }
}

```
