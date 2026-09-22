// Medication Allergies 
Profile: FijiAllergyIntolerance
Parent: AllergyIntolerance
Id: fiji-allergy-intolerance
Title: "Fiji Allergy/Intolerance"
Description: """
## Overview

The **Fiji AllergyIntolerance Profile** defines the minimum data elements and terminology requirements for representing a patient's known or suspected allergies and intolerances within the Fiji FHIR implementation.

The profile is based on the FHIR `AllergyIntolerance` resource and constrains the `patient` reference to the **Fiji Patient** profile. Where applicable, terminology bindings use Fiji-specific value sets to support consistent representation of allergy agents and clinical manifestations.

This profile can be used to represent both confirmed allergies and other adverse reactions or intolerances where clinically relevant.

## Key Elements

| Element | Cardinality | Must Support | Description |
|---|---:|:---:|---|
| `code` | 1..1 | ✓ | **Allergy or intolerance agent.** Identifies the substance, medication, food, or other agent to which the patient has an allergy or intolerance. Bound to the **Fiji Allergy Agent ValueSet** with an extensible binding. |
| `clinicalStatus` | 0..1 | ✓ | Indicates the current clinical status of the allergy or intolerance, such as active or resolved. |
| `verificationStatus` | 0..1 | ✓ | Indicates the degree of certainty that the allergy or intolerance is valid, such as confirmed, unconfirmed, or refuted. |
| `category` | 1..* | ✓ | Identifies the general category of the allergy or intolerance, such as medication, food, or environment. |
| `criticality` | 0..1 | ✓ | Indicates the potential clinical impact of the allergy or intolerance, such as low, high, or unable to assess. |
| `patient` | 1..1 |  | Identifies the patient to whom the allergy or intolerance applies. The reference is constrained to the **Fiji Patient** profile. |
| `onsetDateTime` | 0..1 | ✓ | Records the date and time when the allergy or intolerance was first known or began. |
| `note` | 0..* | ✓ | Provides additional free-text clinical information about the allergy or intolerance that is not captured by the structured elements. |
| `recorder` | 0..1 |  | Identifies the practitioner or practitioner role who recorded the allergy or intolerance. References are constrained to **Fiji Practitioner** or **Fiji PractitionerRole**. |
| `reaction` | 0..* | ✓ | Describes a clinical reaction associated with the allergy or intolerance, including its manifestations and severity. |
| `reaction.manifestation` | 1..* | ✓ | **Clinical symptoms/signs associated with the adverse reaction.** Bound to the **Fiji Condition Code ValueSet** using a preferred binding. |
| `reaction.severity` | 0..1 | ✓ | Indicates the severity of the reaction, such as mild, moderate, or severe. |

## Terminology

The following terminology bindings are defined by this profile:

| Element | Value Set | Description |
|---|---|---|
| `code` | **Fiji Allergy Agent ValueSet** | Based on subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS.|
| `reaction.manifestation` | **Fiji Condition Code ValueSet** | Based on SNOMED CT concepts for "clinical finding" and "situation with explicit content" curated for International Patient Summary|

The extensible binding on `code` allows an allergy or intolerance agent to be represented using a code outside the Fiji Allergy Agent ValueSet when an appropriate concept is not available in the value set.

The preferred binding on `reaction.manifestation` encourages implementers to use concepts from the Fiji Condition Code ValueSet while allowing alternative codes where appropriate.

## Usage

An `AllergyIntolerance` instance should identify the **allergy or intolerance agent** using `code` and, where a reaction has occurred, describe the associated **clinical manifestations** using `reaction.manifestation`. The `reaction.severity` element may be used to communicate the clinical severity of the reaction.

Where the identity of the person responsible for recording the information is known, `recorder` should reference the relevant Fiji Practitioner or Fiji PractitionerRole.
"""
* code 1..1 MS
* code from FijiAllergyAgentVS (extensible)
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* criticality 0..1 MS
* patient only Reference(FijiPatient)
* onsetDateTime MS
* note MS
* recorder 0..1
* recorder only Reference(FijiPractitioner or FijiPractitionerRole)

* reaction MS
* reaction.manifestation 1..* MS
* reaction.manifestation from FijiConditionCodeVS (preferred)
* reaction.manifestation ^short = "Clinical symptoms/signs associated with adverse reaction"

* reaction.severity MS

