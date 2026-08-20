# Immunization Status Reason valueset for reason a vaccine was not administered - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Immunization Status Reason valueset for reason a vaccine was not administered 

 
Status Reason codes for reason a vaccine was not administered. Initial codes used are ICD-11 codes from DAK. TODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen 

 **References** 

* [Fiji Immunization](StructureDefinition-fiji-immunization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "immunization-status-reason",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/immunization-status-reason",
  "version" : "0.1.1",
  "name" : "ImmStatusReasonVS",
  "title" : "Immunization Status Reason valueset for reason a vaccine was not administered",
  "status" : "draft",
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
        "code" : "QC04.0",
        "display" : "Immunization not carried out due to patient having had the disease"
      },
      {
        "code" : "QC04.1",
        "display" : "Immunization not carried out because of acute illness"
      },
      {
        "code" : "QC04.2",
        "display" : "Immunization not carried out because of chronic illness or condition of patient"
      },
      {
        "code" : "QC04.3",
        "display" : "Immunization not carried out because of immune-compromised state of patient"
      },
      {
        "code" : "QC04.4",
        "display" : "Immunization not carried out because of patient allergy to vaccine or component"
      },
      {
        "code" : "QC04.5",
        "display" : "Immunization not carried out because of patient refusal"
      },
      {
        "code" : "QC04.6",
        "display" : " Immunization not carried out because of caregiver refusal"
      },
      {
        "code" : "QC04.7",
        "display" : "Immunization not carried out due to lack of availability"
      },
      {
        "code" : "QC04.Y",
        "display" : "Immunization not carried out for other reasons"
      },
      {
        "code" : "QC04.Z",
        "display" : "Immunization not carried out for unspecified reason"
      }]
    }]
  }
}

```
