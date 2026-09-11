# Fiji Condition - Draft Fiji Core Implementation Guide v0.2.0

## Resource Profile: Fiji Condition 

 

# Profile of Condition (Diagnosis, Problem List item etc) as defined for Fiji Context.

 
This profile sets minimum expectations for an Condition resource to record, search, and fetch diagnoses or problmen-list items associated with a patient. 

### Mandatory elements

 
The following elements must be recorded: 
* code - a coded concept for the condition. The recommendation for future terminology of this element should be selected from SNOMED CT Clinical Finding or Situation with Explicit Context reference sets. Current and past records may use ICD-10 AM terminology. Free text entry should only be permitted if no coded value is available or to record uncoded historic condition information.
* subject - a reference to a Fiji Patient
*  

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| clinicalStatus - the clinical status of the condition from one of (active | recurrence | relapse | inactive | remission | resolved) |

 
*  

| | |
| :--- | :--- |
| category - at least one item from the extensible valueset (problem-list-item | encounter-diagnosis) |

 
 

### Other elements defined

 
*  

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| verificationStatus - the verification status supports or declines the clincal status (unconfirmed | provisional | differential | confirmed | refuted | entered-in-error) |

 
* onset[x] - the estimated or actual date or age when the condition was first observed/diagnosed
* abatement[x] - the estimated or actual date when the condition was resolved or went into remission
* severity - subjective severity of condition coded from [condition severity valueset](https://hl7.org/fhir/R4/valueset-condition-severity.html)
* bodySite - a coded concept specifying the part of the body used in this measurement preferred to use SNOMED CT body structure concepts
* evidence.code - coded concept for the manifestation or symptom leading to diagnosis (there may be multiple values). These concepts may be from SNOMED CT clinical finding or procedure sets, or LOINC lab studies or radiology codes.
 

### Terminology

 
As noted above, it is intended that future deployments will use SNOMED CT valuesets for most coded concepts, but current and past information is dominantly recorded using ICD-10-AM terminology for condition codes. 

### Alignment with Regional IGs

 
The following specifications have been reviewed in development of this profile. 
* Australian Clinical Data for Interoperability Release 2
* New Zealand Clinical Data for Interoperability 2026
* Australian AU Core Implementation Guide 2.0.0
 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-condition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-condition.csv), [Excel](../StructureDefinition-fiji-condition.xlsx), [Schematron](../StructureDefinition-fiji-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-condition",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-condition",
  "version" : "0.2.0",
  "name" : "FijiCondition",
  "title" : "Fiji Condition",
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
  "description" : "# Profile of Condition (Diagnosis, Problem List item etc) as defined for Fiji Context.\n\nThis profile sets minimum expectations for an Condition resource to record, search, and fetch diagnoses or problmen-list items \nassociated with a patient. \n\n### Mandatory elements  \nThe following elements must be recorded:\n* code - a coded concept for the condition.  The recommendation for future terminology of this element should be selected from SNOMED CT \n Clinical Finding or Situation with Explicit Context reference sets.   Current and past records may use ICD-10 AM terminology.\nFree text entry should only be permitted if no coded value is available or to record uncoded historic condition information.\n* subject - a reference to a  Fiji Patient\n* clinicalStatus - the clinical status of the condition from one of (active | recurrence | relapse | inactive | remission | resolved)\n* category - at least one item from the extensible valueset (problem-list-item | encounter-diagnosis)\n\n### Other elements defined\n* verificationStatus - the verification status supports or declines the clincal status (unconfirmed | provisional | differential | confirmed | refuted | entered-in-error)\n* onset[x] -  the estimated or actual date or age when the condition was first observed/diagnosed\n* abatement[x] - the estimated or actual date when the condition was resolved or went into remission\n* severity - subjective severity of condition coded from [condition severity valueset](https://hl7.org/fhir/R4/valueset-condition-severity.html)\n* bodySite - a coded concept specifying the part of the body used in this measurement preferred to use SNOMED CT body structure concepts\n* evidence.code - coded concept for the manifestation or symptom leading to diagnosis (there may be multiple values).  These concepts \nmay be from SNOMED CT clinical finding or procedure sets, or LOINC lab studies or radiology codes.\n\n### Terminology  \n\nAs noted above, it is intended that future deployments will use SNOMED CT valuesets for most coded concepts,  but current and \npast information is dominantly recorded using ICD-10-AM terminology for condition codes.\n\n### Alignment with Regional IGs  \n\nThe following specifications have been reviewed in development of this profile. \n-\tAustralian Clinical Data for Interoperability Release 2\n-\tNew Zealand Clinical Data for Interoperability 2026\n-\tAustralian AU Core Implementation Guide 2.0.0",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-condition-code-vs"
      }
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.onset[x]:onsetDateTime",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-evidence-vs"
      }
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "mustSupport" : true
    }]
  }
}

```
