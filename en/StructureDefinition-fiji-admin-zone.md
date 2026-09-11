# Fiji Health Administration Zone - Draft Fiji Core Implementation Guide v0.2.0

## Extension: Fiji Health Administration Zone 

The health administration zoning for the patient represented as Division, Sub-divsions, medical area, nursing zone and settlement

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fiji Patient](StructureDefinition-fiji-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-admin-zone.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-admin-zone.csv), [Excel](../StructureDefinition-fiji-admin-zone.xlsx), [Schematron](../StructureDefinition-fiji-admin-zone.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-admin-zone",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-admin-zone",
  "version" : "0.2.0",
  "name" : "FijiAdminZone",
  "title" : "Fiji Health Administration Zone",
  "status" : "draft",
  "date" : "2026-09-11T02:30:38+00:00",
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
  "description" : "The health administration zoning for the patient represented as Division, Sub-divsions, medical area, nursing zone and settlement",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Fiji Health Administration Zone",
      "definition" : "The health administration zoning for the patient represented as Division, Sub-divsions, medical area, nursing zone and settlement"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:division",
      "path" : "Extension.extension",
      "sliceName" : "division",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:division.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:division.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "division"
    },
    {
      "id" : "Extension.extension:division.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-division-vs"
      }
    },
    {
      "id" : "Extension.extension:subDivision",
      "path" : "Extension.extension",
      "sliceName" : "subDivision",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:subDivision.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:subDivision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "subDivision"
    },
    {
      "id" : "Extension.extension:subDivision.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-sub-division-vs"
      }
    },
    {
      "id" : "Extension.extension:medicalArea",
      "path" : "Extension.extension",
      "sliceName" : "medicalArea",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:medicalArea.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:medicalArea.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "medicalArea"
    },
    {
      "id" : "Extension.extension:medicalArea.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-division-vs"
      }
    },
    {
      "id" : "Extension.extension:nursingZone",
      "path" : "Extension.extension",
      "sliceName" : "nursingZone",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:nursingZone.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:nursingZone.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "nursingZone"
    },
    {
      "id" : "Extension.extension:nursingZone.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-division-vs"
      }
    },
    {
      "id" : "Extension.extension:settlement",
      "path" : "Extension.extension",
      "sliceName" : "settlement",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:settlement.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:settlement.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "settlement"
    },
    {
      "id" : "Extension.extension:settlement.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-admin-zone"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
