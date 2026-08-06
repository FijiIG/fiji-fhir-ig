# Blood Pressure Observation - Draft Fiji Core Implementation Guide v0.1.1

## Resource Profile: Blood Pressure Observation 

 
This profile sets minimum expectations for an Observation resource to record blood pressure observations. It is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide. 

### Summary of Requirements

 
1. One code in`Observation.code`which must have
* a fixed `Observation.code.coding.system`=**'http ://loinc.org'**
* a fixed `Observation.code.coding.code`= **85354-9'**
* Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC Codes, SNOMED CT concepts, system specific codes. All codes SHALL have an system value

1. One`Observation.component.code`which must have
* a fixed `Observation.component.code.coding.system`=**'http://loinc.org'**
* fixed `Observation.component.code.coding.code`= **'8480-6'**
* Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC Codes, SNOMED CT concepts, system specific codes. All codes SHALL have an system value

1. One`Observation.component.code`which must have
* a fixed `Observation.component.code.coding.system`=**'http://loinc.org'**
* fixed `Observation.component.code.coding.code`= **'8462-4'**
* Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC Codes, SNOMED CT concepts, system specific codes. All codes SHALL have an system value

1. Either one Observation.valueQuantity or, if there is no value, one code in Observation.DataAbsentReason
* Each Observation.valueQuantity must have: 
* One numeric value in Observation.valueQuantity.value
* a fixed Observation.valueQuantity.system="http://unitsofmeasure.org"
* a UCUM unit code in Observation.valueQuantity.code = **'mm[Hg]'**
 

 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-vital-blood-pressure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-vital-blood-pressure.csv), [Excel](../StructureDefinition-fiji-vital-blood-pressure.xlsx), [Schematron](../StructureDefinition-fiji-vital-blood-pressure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-vital-blood-pressure",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-blood-pressure",
  "version" : "0.1.1",
  "name" : "FijiVitalBloodPressure",
  "title" : "Blood Pressure Observation",
  "status" : "draft",
  "date" : "2026-08-06T07:01:07+00:00",
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
  "description" : "This profile sets minimum expectations for an Observation resource to record blood pressure observations.\nIt is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Summary of  Requirements\n\n1.  One code in `Observation.code` which must have\n    -   a fixed `Observation.code.coding.system`=**'http ://loinc.org'**\n    -   a fixed  `Observation.code.coding.code`= **85354-9'**\n    -   Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC\n        Codes, SNOMED CT concepts, system specific codes. All codes\n        SHALL have an system value\n2.  One  `Observation.component.code`  which must have\n    -   a fixed `Observation.component.code.coding.system`=**'http://loinc.org'**\n    -   fixed  `Observation.component.code.coding.code`= **'8480-6'**\n    -   Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC\n        Codes, SNOMED CT concepts, system specific codes. All codes\n        SHALL have an system value\n3.  One  `Observation.component.code` which must have \n    -   a fixed `Observation.component.code.coding.system`=**'http://loinc.org'**\n    -   fixed  `Observation.component.code.coding.code`= **'8462-4'**\n    -   Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC\n        Codes, SNOMED CT concepts, system specific codes. All codes\n        SHALL have an system value\n4. Either one Observation.valueQuantity or, if there is no value, one code in Observation.DataAbsentReason\n   - Each Observation.valueQuantity must have:\n     - One numeric value in Observation.valueQuantity.value\n     - a fixed Observation.valueQuantity.system=\\\"http://unitsofmeasure.org\\\"\n     - a UCUM unit code in Observation.valueQuantity.code = **'mm[Hg]'**\n",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bp",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }]
    }]
  }
}

```
