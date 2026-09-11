# Blood Pressure Observation - Draft Fiji Core Implementation Guide v0.2.0

## Resource Profile: Blood Pressure Observation 

 
This profile defines the requirements and usage of a resource recording Blood Pressure vital observations. It is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide. 

### Mandatory elements

 
The following elements must be recorded: 
*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code - code defining this is a blood pressure measurement 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 85354-9
 
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Blood pressure was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the BMI did not change
 
* component for systolic reading which must have 
* component.code.coding.system = http://loinc.org
* component.code.coding.code = **'8480-6'**
* component.valueQuantity.value - decimal value of bp
* component.valueQuantity.system = http://unitsofmeasure.org
* component.valueQuantity.code = **'mm[Hg]'**
 
* component for diastolic reading which must have 
* component.code.coding.system = http://loinc.org
* component.code.coding.code = **'8462-4'**
* component.valueQuantity.value - decimal value of bp
* component.valueQuantity.system = http://unitsofmeasure.org
* component.valueQuantity.code = **'mm[Hg]'**
 
 

### Other elements defined

 
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 

**Usages:**

* Examples for this Profile: [Observation/ExampleBloodPressure](Observation-ExampleBloodPressure.md)

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
  "version" : "0.2.0",
  "name" : "FijiVitalBloodPressure",
  "title" : "Blood Pressure Observation",
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
  "description" : "This profile defines the requirements and usage of a resource recording Blood Pressure vital observations.\nIt is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code - code defining this is a blood pressure measurement\n  * code.coding.system - must be http ://loinc.org \n  * code.coding.code - must be 85354-9\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Blood pressure was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change\n* component for systolic reading which must have\n    * component.code.coding.system = http://loinc.org\n    * component.code.coding.code = **'8480-6'**\n    * component.valueQuantity.value - decimal value of bp\n    * component.valueQuantity.system = http://unitsofmeasure.org\n    * component.valueQuantity.code = **'mm[Hg]'**\n\n* component for diastolic reading which must have\n    * component.code.coding.system = http://loinc.org\n    * component.code.coding.code = **'8462-4'**\n    * component.valueQuantity.value - decimal value of bp\n    * component.valueQuantity.system = http://unitsofmeasure.org\n    * component.valueQuantity.code = **'mm[Hg]'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the BMI measurement took place\t \n* method -  a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded ",
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
