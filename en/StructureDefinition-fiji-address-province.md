# Fiji Yasana or Province - Draft Fiji Core Implementation Guide v0.1.1

## Extension: Fiji Yasana or Province 

Yasana or Province part of FijiAddress.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fiji Address](StructureDefinition-fiji-address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-address-province.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-address-province.csv), [Excel](../StructureDefinition-fiji-address-province.xlsx), [Schematron](../StructureDefinition-fiji-address-province.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-address-province",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-address-province",
  "version" : "0.1.1",
  "name" : "FijiAddressProvince",
  "title" : "Fiji Yasana or Province",
  "status" : "active",
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
  "description" : "Yasana or Province part of FijiAddress.",
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
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Fiji Yasana or Province",
      "definition" : "Yasana or Province part of FijiAddress."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-address-province"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Yasana or Province name.",
      "definition" : "The name of the yasana or province.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
