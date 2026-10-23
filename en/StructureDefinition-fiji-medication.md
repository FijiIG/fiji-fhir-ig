# Fiji Medication - Draft Fiji Core Implementation Guide v0.3.0

## Resource Profile: Fiji Medication 

**Usages:**

* Refer to this Profile: [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md) and [Fiji Medication Request](StructureDefinition-fiji-medication-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-medication.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-medication.csv), [Excel](../StructureDefinition-fiji-medication.xlsx), [Schematron](../StructureDefinition-fiji-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-medication",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication",
  "version" : "0.3.0",
  "name" : "FijiMedication",
  "title" : "Fiji Medication",
  "status" : "draft",
  "date" : "2026-10-23T04:23:18+00:00",
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
  "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  \nThe Medication resource allows for medications to be characterized by the form of the drug and the ingredient (or ingredients), \nas well as how it is packaged. The medication will include the ingredient(s) and their strength(s) and the package can include \nthe amount (for example, number of tablets, volume, etc.) that is contained in a particular container \n(for example, 100 capsules of Amoxicillin 500mg per bottle).",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "mustSupport" : true
    }]
  }
}

```
