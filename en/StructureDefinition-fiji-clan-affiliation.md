# Fiji Clan Affiliation - Draft Fiji Core Implementation Guide v0.1.1

## Extension: Fiji Clan Affiliation 

Represents clan, tribe, lineage, or descent-based group affiliation.

This is a demographic identity attribute. It is not a syntactic component of a name.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fiji Patient](StructureDefinition-fiji-patient.md) and [Fiji Practitioner](StructureDefinition-fiji-practitioner.md)
* Examples for this Extension: [Patient/FijiPatientExample1](Patient-FijiPatientExample1.md), [Patient/FijiPatientExample2](Patient-FijiPatientExample2.md) and [Patient/FijiPatientFijiITaukei](Patient-FijiPatientFijiITaukei.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-clan-affiliation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-clan-affiliation.csv), [Excel](../StructureDefinition-fiji-clan-affiliation.xlsx), [Schematron](../StructureDefinition-fiji-clan-affiliation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-clan-affiliation",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-clan-affiliation",
  "version" : "0.1.1",
  "name" : "FijiClanAffiliation",
  "title" : "Fiji Clan Affiliation",
  "status" : "active",
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
  "description" : "Represents clan, tribe, lineage, or descent-based group affiliation.\n\nThis is a demographic identity attribute.\nIt is not a syntactic component of a name.",
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
    "expression" : "Patient"
  },
  {
    "type" : "element",
    "expression" : "Practitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Fiji Clan Affiliation",
      "definition" : "Represents clan, tribe, lineage, or descent-based group affiliation.\n\nThis is a demographic identity attribute.\nIt is not a syntactic component of a name."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-clan-affiliation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "min" : 1
    }]
  }
}

```
