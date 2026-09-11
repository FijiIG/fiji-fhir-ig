# Weight Vitals - Fiji - Draft Fiji Core Implementation Guide v0.2.0

## Resource Profile: Weight Vitals - Fiji 

 
This profile defines the requirements and usage of an Observation resource recording Body Weight vital observations. It is based on the FHIR Body Weight Profile and adapted as required for the Fiji Core Implementation Guide. 

### Mandatory elements

 
The following elements must be recorded: 
*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 29463-7
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Body Weight was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the Body Weight did not change
 
* valueQuantity - the Body Weight value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'kg'**
 
 

### Other elements defined

 
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Body Weight measurement took place
* interpretation - a coded concept providing interpretation for the value
* device - reference to the specific device used to measure
* note - any additional relevant information to be recorded
 

**Usages:**

* Examples for this Profile: [Observation/Example-BodyWeight](Observation-Example-BodyWeight.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-vital-weight.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-vital-weight.csv), [Excel](../StructureDefinition-fiji-vital-weight.xlsx), [Schematron](../StructureDefinition-fiji-vital-weight.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-vital-weight",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-weight",
  "version" : "0.2.0",
  "name" : "FijiWeight",
  "title" : "Weight Vitals - Fiji",
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
  "description" : "This profile defines the requirements and usage of an Observation resource recording Body Weight vital observations.\nIt is based on the FHIR Body Weight Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 29463-7\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Body Weight was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the Body Weight did not change\n* valueQuantity - the Body Weight value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'kg'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Body Weight measurement took place\t \n* interpretation - a coded concept providing interpretation for the value \n* device - reference to the specific device used to measure\n* note - any additional relevant information to be recorded",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodyweight",
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
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
      }]
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-obs-interpretation-vs"
      }
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-device"]
      }]
    }]
  }
}

```
