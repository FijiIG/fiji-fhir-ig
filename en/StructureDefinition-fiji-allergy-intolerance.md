# Fiji Allergy/Intolerance - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Allergy/Intolerance 

 

## Overview

 
The **Fiji AllergyIntolerance Profile** defines the minimum data elements and terminology requirements for representing a patient's known or suspected allergies and intolerances within the Fiji FHIR implementation. 
The profile is based on the FHIR `AllergyIntolerance` resource and constrains the `patient` reference to the **Fiji Patient** profile. Where applicable, terminology bindings use Fiji-specific value sets to support consistent representation of allergy agents and clinical manifestations. 
This profile can be used to represent both confirmed allergies and other adverse reactions or intolerances where clinically relevant. 

## Key Elements

 

| | | | |
| :--- | :--- | :--- | :--- |
| `code` | 1..1 | ✓ | **Allergy or intolerance agent.**Identifies the substance, medication, food, or other agent to which the patient has an allergy or intolerance. Bound to the**Fiji Allergy Agent ValueSet**with an extensible binding. |
| `clinicalStatus` | 0..1 | ✓ | Indicates the current clinical status of the allergy or intolerance, such as active or resolved. |
| `verificationStatus` | 0..1 | ✓ | Indicates the degree of certainty that the allergy or intolerance is valid, such as confirmed, unconfirmed, or refuted. |
| `category` | 1..* | ✓ | Identifies the general category of the allergy or intolerance, such as medication, food, or environment. |
| `criticality` | 0..1 | ✓ | Indicates the potential clinical impact of the allergy or intolerance, such as low, high, or unable to assess. |
| `patient` | 1..1 |   | Identifies the patient to whom the allergy or intolerance applies. The reference is constrained to the**Fiji Patient**profile. |
| `onsetDateTime` | 0..1 | ✓ | Records the date and time when the allergy or intolerance was first known or began. |
| `note` | 0..* | ✓ | Provides additional free-text clinical information about the allergy or intolerance that is not captured by the structured elements. |
| `recorder` | 0..1 |   | Identifies the practitioner or practitioner role who recorded the allergy or intolerance. References are constrained to**Fiji Practitioner**or**Fiji PractitionerRole**. |
| `reaction` | 0..* | ✓ | Describes a clinical reaction associated with the allergy or intolerance, including its manifestations and severity. |
| `reaction.manifestation` | 1..* | ✓ | **Clinical symptoms/signs associated with the adverse reaction.**Bound to the**Fiji Condition Code ValueSet**using a preferred binding. |
| `reaction.severity` | 0..1 | ✓ | Indicates the severity of the reaction, such as mild, moderate, or severe. |

 

## Terminology

 
The following terminology bindings are defined by this profile: 

| | | |
| :--- | :--- | :--- |
| `code` | **Fiji Allergy Agent** | Based on subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS. |
| `reaction.manifestation` | **Fiji Condition Code** | Based on SNOMED CT concepts for "clinical finding" and "situation with explicit content" curated for International Patient Summary |

 
The extensible binding on `code` allows an allergy or intolerance agent to be represented using a code outside the Fiji Allergy Agent ValueSet when an appropriate concept is not available in the value set. 
The preferred binding on `reaction.manifestation` encourages implementers to use concepts from the Fiji Condition Code ValueSet while allowing alternative codes where appropriate. 

## Usage

 
An `AllergyIntolerance` instance should identify the **allergy or intolerance agent** using `code` and, where a reaction has occurred, describe the associated **clinical manifestations** using `reaction.manifestation`. The `reaction.severity` element may be used to communicate the clinical severity of the reaction. 
Where the identity of the person responsible for recording the information is known, `recorder` should reference the relevant Fiji Practitioner or Fiji PractitionerRole. 

### No Known Allergies

 
No Known Allergies representation The recommended 'best practice' for representing 'No Known Allergies' requires a combination of the following element settings: 
1. `code`: should include both the SNOMED CT "716186003" and the HL7 "no-known-allergies" codings
1. `clinicalStatus`: should be set to "active"
1. `verificationStatus`: should be set to "confirmed" This indicates that a clinican has formally verified that status, and the use of both codings maximizes interoperability ** Note: ** Any other recorded Active allergy for the patient should negate a No Known Allergy record.
 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/FijiAllergyIntoleranceExample](AllergyIntolerance-FijiAllergyIntoleranceExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-allergy-intolerance.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-allergy-intolerance.csv), [Excel](../StructureDefinition-fiji-allergy-intolerance.xlsx), [Schematron](../StructureDefinition-fiji-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-allergy-intolerance",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-allergy-intolerance",
  "version" : "0.2.1",
  "name" : "FijiAllergyIntolerance",
  "title" : "Fiji Allergy/Intolerance",
  "status" : "draft",
  "date" : "2026-09-23T05:51:44+00:00",
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
  "description" : "## Overview\n\nThe **Fiji AllergyIntolerance Profile** defines the minimum data elements and terminology requirements for representing a patient's known or suspected allergies and intolerances within the Fiji FHIR implementation.\n\nThe profile is based on the FHIR `AllergyIntolerance` resource and constrains the `patient` reference to the **Fiji Patient** profile. Where applicable, terminology bindings use Fiji-specific value sets to support consistent representation of allergy agents and clinical manifestations.\n\nThis profile can be used to represent both confirmed allergies and other adverse reactions or intolerances where clinically relevant.\n\n## Key Elements\n\n| Element | Cardinality | Must Support | Description |\n|---|---:|:---:|---|\n| `code` | 1..1 | ✓ | **Allergy or intolerance agent.** Identifies the substance, medication, food, or other agent to which the patient has an allergy or intolerance. Bound to the **Fiji Allergy Agent ValueSet** with an extensible binding. |\n| `clinicalStatus` | 0..1 | ✓ | Indicates the current clinical status of the allergy or intolerance, such as active or resolved. |\n| `verificationStatus` | 0..1 | ✓ | Indicates the degree of certainty that the allergy or intolerance is valid, such as confirmed, unconfirmed, or refuted. |\n| `category` | 1..* | ✓ | Identifies the general category of the allergy or intolerance, such as medication, food, or environment. |\n| `criticality` | 0..1 | ✓ | Indicates the potential clinical impact of the allergy or intolerance, such as low, high, or unable to assess. |\n| `patient` | 1..1 |  | Identifies the patient to whom the allergy or intolerance applies. The reference is constrained to the **Fiji Patient** profile. |\n| `onsetDateTime` | 0..1 | ✓ | Records the date and time when the allergy or intolerance was first known or began. |\n| `note` | 0..* | ✓ | Provides additional free-text clinical information about the allergy or intolerance that is not captured by the structured elements. |\n| `recorder` | 0..1 |  | Identifies the practitioner or practitioner role who recorded the allergy or intolerance. References are constrained to **Fiji Practitioner** or **Fiji PractitionerRole**. |\n| `reaction` | 0..* | ✓ | Describes a clinical reaction associated with the allergy or intolerance, including its manifestations and severity. |\n| `reaction.manifestation` | 1..* | ✓ | **Clinical symptoms/signs associated with the adverse reaction.** Bound to the **Fiji Condition Code ValueSet** using a preferred binding. |\n| `reaction.severity` | 0..1 | ✓ | Indicates the severity of the reaction, such as mild, moderate, or severe. |\n\n## Terminology\n\nThe following terminology bindings are defined by this profile:\n\n| Element | Value Set | Description |\n|---|---|---|\n| `code` | **Fiji Allergy Agent** | Based on subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS.|\n| `reaction.manifestation` | **Fiji Condition Code** | Based on SNOMED CT concepts for \"clinical finding\" and \"situation with explicit content\" curated for International Patient Summary|\n\nThe extensible binding on `code` allows an allergy or intolerance agent to be represented using a code outside the Fiji Allergy Agent ValueSet when an appropriate concept is not available in the value set.\n\nThe preferred binding on `reaction.manifestation` encourages implementers to use concepts from the Fiji Condition Code ValueSet while allowing alternative codes where appropriate.\n\n## Usage\n\nAn `AllergyIntolerance` instance should identify the **allergy or intolerance agent** using `code` and, where a reaction has occurred, describe the associated **clinical manifestations** using `reaction.manifestation`. The `reaction.severity` element may be used to communicate the clinical severity of the reaction.\n\nWhere the identity of the person responsible for recording the information is known, `recorder` should reference the relevant Fiji Practitioner or Fiji PractitionerRole.\n\n### No Known Allergies \nNo Known Allergies representation\nThe recommended 'best practice' for representing 'No Known Allergies' requires a combination of the following element settings:\n1. `code` : should include both the SNOMED CT \"716186003\" and the HL7 \"no-known-allergies\" codings\n1. `clinicalStatus` : should be set to \"active\"\n1. `verificationStatus` : should be set to \"confirmed\"\nThis indicates that a clinican has formally verified that status, and the use of both codings maximizes interoperability\n** Note: ** Any other recorded Active allergy for the patient should negate a No Known Allergy record.",
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
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-allergy-agent-vs"
      }
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
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
      "id" : "AllergyIntolerance.onset[x]:onsetDateTime",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role"]
      }]
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Clinical symptoms/signs associated with adverse reaction",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-condition-code-vs"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "mustSupport" : true
    }]
  }
}

```
