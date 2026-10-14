# Fiji iTaukei Affiliation - Draft Fiji Core Implementation Guide v0.2.2

## Extension: Fiji iTaukei Affiliation 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fiji Patient](StructureDefinition-fiji-patient.md) and [Fiji Practitioner](StructureDefinition-fiji-practitioner.md)
* Examples for this Extension: [Patient/FijiPatientExample](Patient-FijiPatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-iTaukei-affiliation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-iTaukei-affiliation.csv), [Excel](../StructureDefinition-fiji-iTaukei-affiliation.xlsx), [Schematron](../StructureDefinition-fiji-iTaukei-affiliation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-iTaukei-affiliation",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-iTaukei-affiliation",
  "version" : "0.2.2",
  "name" : "FijiITaukeiAffiliation",
  "title" : "Fiji iTaukei Affiliation",
  "status" : "active",
  "date" : "2026-10-14T05:21:25+00:00",
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
  "description" : "Represents Fiji iTaukei affiliation.\nThis is a demographic identity attribute.\nIt is not a syntactic component of a name.",
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
      "short" : "Fiji iTaukei Affiliation",
      "definition" : "Represents Fiji iTaukei affiliation.\nThis is a demographic identity attribute.\nIt is not a syntactic component of a name."
    },
    {
      "id" : "Extension.extension:yasana",
      "path" : "Extension.extension",
      "sliceName" : "yasana",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:yasana.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:yasana.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "yasana"
    },
    {
      "id" : "Extension.extension:yasana.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.health.gov.fj/ValueSet/fiji-yasana"
      }
    },
    {
      "id" : "Extension.extension:tikina",
      "path" : "Extension.extension",
      "sliceName" : "tikina",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:tikina.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:tikina.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "tikina"
    },
    {
      "id" : "Extension.extension:tikina.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.health.gov.fj/ValueSet/fiji-tikina"
      }
    },
    {
      "id" : "Extension.extension:korodina",
      "path" : "Extension.extension",
      "sliceName" : "korodina",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:korodina.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:korodina.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "korodina"
    },
    {
      "id" : "Extension.extension:korodina.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.health.gov.fj/ValueSet/fiji-korodina"
      }
    },
    {
      "id" : "Extension.extension:yavusa",
      "path" : "Extension.extension",
      "sliceName" : "yavusa",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:yavusa.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:yavusa.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "yavusa"
    },
    {
      "id" : "Extension.extension:yavusa.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.health.gov.fj/ValueSet/fiji-yavusa"
      }
    },
    {
      "id" : "Extension.extension:mataqali",
      "path" : "Extension.extension",
      "sliceName" : "mataqali",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:mataqali.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:mataqali.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "mataqali"
    },
    {
      "id" : "Extension.extension:mataqali.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.health.gov.fj/ValueSet/fiji-mataqali"
      }
    },
    {
      "id" : "Extension.extension:tokatoka",
      "path" : "Extension.extension",
      "sliceName" : "tokatoka",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:tokatoka.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:tokatoka.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "tokatoka"
    },
    {
      "id" : "Extension.extension:tokatoka.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.health.gov.fj/ValueSet/fiji-tokatoka"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-iTaukei-affiliation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
