# Immunization Status Reason Value Set - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunization Status Reason Value Set**

## ValueSet: Immunization Status Reason Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/ValueSet/immunization-status-reason | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:ImmStatusReasonVS |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.48.29 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Status Reason codes for reason a vaccine was not administered. Initial codes used are ICD-11 codes from DAK. TODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen 

 **References** 

* [Fiji Immunization](StructureDefinition-fiji-immunization.md)

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
  "id" : "immunization-status-reason",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/immunization-status-reason",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.29"
  }],
  "version" : "0.9.1",
  "name" : "ImmStatusReasonVS",
  "title" : "Immunization Status Reason Value Set",
  "status" : "draft",
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
  "description" : "Status Reason codes for reason a vaccine was not administered. \nInitial codes used are ICD-11 codes from DAK.\nTODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen",
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
      "system" : "http://id.who.int/icd/release/11/mms",
      "concept" : [{
        "code" : "1498576014",
        "display" : "Immunization not carried out due to patient having had the disease"
      },
      {
        "code" : "679809409",
        "display" : "Immunization not carried out because of acute illness"
      },
      {
        "code" : "1650200188",
        "display" : "Immunization not carried out because of chronic illness or condition of patient"
      },
      {
        "code" : "1200706488",
        "display" : "Immunization not carried out because of immune-compromised state of patient"
      },
      {
        "code" : "472002267",
        "display" : "Immunization not carried out because of patient allergy to vaccine or component"
      },
      {
        "code" : "583273619",
        "display" : "Immunization not carried out because of patient refusal"
      },
      {
        "code" : "118051153",
        "display" : "Immunization not carried out because of caregiver refusal"
      },
      {
        "code" : "300485628",
        "display" : "Immunization not carried out due to lack of availability"
      },
      {
        "code" : "836689174/other",
        "display" : "Immunization not carried out for other reasons"
      },
      {
        "code" : "836689174/unspecified",
        "display" : "Immunization not carried out for unspecified reason"
      }]
    }]
  }
}

```
