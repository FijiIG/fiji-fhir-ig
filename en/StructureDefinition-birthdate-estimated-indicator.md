# Birth Date Estimated Indicator - Draft Fiji Core Implementation Guide v0.1.1

## Extension: Birth Date Estimated Indicator 

Indicates that the associated Patient.birthDate is an estimated (approximate) date of birth rather than a confirmed, exact date. Absence of this extension means no assertion is made about accuracy.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fiji Patient](StructureDefinition-fiji-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-birthdate-estimated-indicator.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-birthdate-estimated-indicator.csv), [Excel](../StructureDefinition-birthdate-estimated-indicator.xlsx), [Schematron](../StructureDefinition-birthdate-estimated-indicator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "birthdate-estimated-indicator",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/birthdate-estimated-indicator",
  "version" : "0.1.1",
  "name" : "BirthDateEstimatedIndicator",
  "title" : "Birth Date Estimated Indicator",
  "status" : "draft",
  "date" : "2026-07-23T07:16:02+00:00",
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
  "description" : "Indicates that the associated Patient.birthDate is an estimated (approximate) date of birth rather than a confirmed, exact date. Absence of this extension means no assertion is made about accuracy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient.birthDate"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Birth Date Estimated Indicator",
      "definition" : "Indicates that the associated Patient.birthDate is an estimated (approximate) date of birth rather than a confirmed, exact date. Absence of this extension means no assertion is made about accuracy."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://core.fhir.health.gov.fj/StructureDefinition/birthdate-estimated-indicator"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
