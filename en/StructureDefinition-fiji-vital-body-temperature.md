# Body Temperature Vitals - Fiji - Draft Fiji Core Implementation Guide v0.2.0

## Resource Profile: Body Temperature Vitals - Fiji 

 
This profile defines the requirements and usage of an Observation resource recording Body Temperature vital observations. It is based on the FHIR Body Temperature Profile and adapted as required for the Fiji Core Implementation Guide. 

### Mandatory elements

 
The following elements must be recorded: 
*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 8310-5
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Body Temperature was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the BMI did not change
 
* valueQuantity - the Blood Pressure value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'Cel'**
 
 

### Other elements defined

 
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 

**Usages:**

* Examples for this Profile: [Observation/FijiBodyTemperatureExample](Observation-FijiBodyTemperatureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-vital-body-temperature.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-vital-body-temperature.csv), [Excel](../StructureDefinition-fiji-vital-body-temperature.xlsx), [Schematron](../StructureDefinition-fiji-vital-body-temperature.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-vital-body-temperature",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-body-temperature",
  "version" : "0.2.0",
  "name" : "FijiVitalBodyTemperature",
  "title" : "Body Temperature Vitals - Fiji",
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
  "description" : "This profile defines the requirements and usage of an Observation resource recording Body Temperature vital observations.\nIt is based on the FHIR Body Temperature Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 8310-5\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Body Temperature was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change\n* valueQuantity - the Blood Pressure value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'Cel'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the BMI measurement took place\t \n* method -  a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/bodytemp",
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
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "mustSupport" : true,
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
