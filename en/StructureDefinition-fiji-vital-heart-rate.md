# Heart Rate Vitals - Fiji - Draft Fiji Core Implementation Guide v0.2.0

## Resource Profile: Heart Rate Vitals - Fiji 

 
This profile defines the requirements and usage of an Observation resource recording Heart Rate vital observations. It is based on the FHIR Heart Rate Profile and adapted as required for the Fiji Core Implementation Guide. 

### Mandatory elements

 
The following elements must be recorded: 
*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 8867-4
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Heart Rate was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
 
* valueQuantity - the Heart Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'/min'**
 
 

### Other elements defined

 
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Heart Rate measurement took place
* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 

**Usages:**

* Examples for this Profile: [Observation/HeartRateExample](Observation-HeartRateExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-vital-heart-rate.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-vital-heart-rate.csv), [Excel](../StructureDefinition-fiji-vital-heart-rate.xlsx), [Schematron](../StructureDefinition-fiji-vital-heart-rate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-vital-heart-rate",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-heart-rate",
  "version" : "0.2.0",
  "name" : "FijiVitalHeartRate",
  "title" : "Heart Rate Vitals - Fiji",
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
  "description" : "This profile defines the requirements and usage of an Observation resource recording Heart Rate vital observations.\nIt is based on the FHIR Heart Rate Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 8867-4\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Heart Rate was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n* valueQuantity - the Heart Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'/min'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Heart Rate measurement took place\t \n* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement\n* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/heartrate",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:bodyPosition",
      "path" : "Observation.extension",
      "sliceName" : "bodyPosition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"]
      }]
    },
    {
      "id" : "Observation.extension:bodyPosition.value[x]",
      "path" : "Observation.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/bodyPositionVS"
      }
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
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-vital-method-vs"
      }
    }]
  }
}

```
