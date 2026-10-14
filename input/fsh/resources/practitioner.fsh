// Practioner Providing Care for template Patient
Profile: FijiPractitioner
Parent: Practitioner
Id: fiji-practitioner
Title: "Fiji Practitioner"
Description: """
# Fiji Practitioner

## Overview

The **Fiji Practitioner** profile represents a healthcare practitioner involved in the delivery of healthcare services within Fiji. It supports culturally appropriate naming conventions while preserving the regulatory and medico-legal identity requirements necessary for clinical documentation, healthcare information exchange (HIE), and practitioner identification.

The profile uses the FHIR `Practitioner` resource and supports professional identifiers, registered and commonly used names, contact information, professional qualifications, and languages used by the practitioner. An optional iTaukei affiliation extension supports culturally appropriate representation of clan affiliation where applicable.

At least one professional identifier and exactly one official name are required. A usual name may be recorded when the practitioner is commonly known by a different name in clinical or community settings.

## Key elements

| Element | Cardinality | Constraints / requirements | Description |
|---|---|---|---|
| `identifier` | `1..*` | Must contain at least one identifier. | Professional registration, licensing, or other identifiers used to identify the practitioner. |
| `identifier[medicalRegistrationNumber]` | `0..1` | Uses the system `https://fhir.health.gov.fj/identifier/practitioner-medical-registration`; when present, `system` and `value` are required. | Medical registration number issued by the relevant professional registration authority. |
| `name` | `1..*` | Uses `FijiHumanName`; sliced by `use`. | Names associated with the practitioner, supporting Fiji-specific naming conventions. |
| `name[official]` | `1..1` | `use = official`. | The practitioner's registered or licensed name, supporting reliable medico-legal identification. |
| `name[usual]` | `0..1` | `use = usual`. | The name commonly used in clinical practice or community interactions, where different from the official name. |
| `extension[iTaukei]` | `0..1` | Uses `FijiITaukeiAffiliation`. | Optional iTaukei affiliation information, where applicable and appropriate to record. |
| `telecom` | `0..*` | Must contain valid contact details when populated. | Professional telephone numbers, email addresses, or other contact channels. |
| `address` | `0..*` | Uses `FijiAddress`. | Practice or correspondence addresses. |
| `gender` | `0..1` | Must use the FHIR administrative gender value set. | Administrative gender, where recorded. |
| `qualification` | `0..*` | `qualification.code` is `1..1` for each qualification. | Professional qualifications, certifications, or credentials held by the practitioner. |
| `communication` | `0..*` | No mandatory language has been specified by this profile. | Languages the practitioner can use to communicate with patients and other healthcare professionals. |

## Implementation guidance

- **Professional identity:** Implementations should use the medical registration identifier when one is available. The profile currently permits other identifiers and does not require the medical registration slice to be populated.
- **Name handling:** The official name should reflect the practitioner's registered or licensed identity. The usual name supports respectful, culturally appropriate communication without replacing the official name.
- **Cultural affiliation:** Record the iTaukei affiliation extension only where applicable and appropriate. It is optional and should not be used as a substitute for practitioner identity or professional registration.
- **Qualifications:** Record each qualification separately, using an appropriate coded qualification where available. A Fiji-specific qualification value set may be introduced in a future version.
- **Communication:** Record the languages the practitioner can use to support appropriate patient communication and care coordination. A minimum communication language is not currently required.
- **Contact information:** Use `telecom` and `address` for professional contact details and practice or correspondence locations, subject to applicable privacy and data governance requirements.

## Scope and future considerations

The following items are identified for future development and are not mandatory constraints in the current profile:

- Require at least one medical or other professional registration identifier through a dedicated identifier slice.
- Bind `qualification.code` to an appropriate Fiji-specific value set.
- Require at least one practitioner communication language.
- Consider a dedicated `displayName` extension if a consistent preferred-name display mechanism is needed across electronic health record systems and HIE services.

This profile is intended to provide a consistent representation of healthcare practitioners across Fiji's healthcare systems while supporting professional accountability, interoperability, and culturally appropriate care.
"""
// TODO: 
// Consider adding a "displayName" extension for easier display of preferred name in EHRs and HIEs.
// Require at least one professional identifier slice for registration
// Bind qualification.code to a Fiji value set
// Require communication language

///////////////////////////////////////////////////////////////
// IDENTIFIERS
///////////////////////////////////////////////////////////////

* identifier 1..*
* identifier ^short = "Professional identifiers (registration, license, etc.)"
* identifier ^definition = "Includes professional registration numbers and other practitioner identifiers."
* identifier 1..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains medicalRegistrationNumber 0..1 MS

* identifier[medicalRegistrationNumber].system 1..1
* identifier[medicalRegistrationNumber].system = "https://fhir.health.gov.fj/identifier/practitioner-medical-registration"
* identifier[medicalRegistrationNumber].value 1..1

///////////////////////////////////////////////////////////////
// NAME
///////////////////////////////////////////////////////////////

* name 1..*
* name only FijiHumanName

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open

* name contains
    official 1..1 and
    usual 0..1

* name[official].use = #official (exactly)
* name[official] ^short = "Clinician Registered/licensed name"

* name[usual].use = #usual (exactly)
* name[usual] ^short = "Name commonly used in clinical or community settings"

///////////////////////////////////////////////////////////////
// CLAN AFFILIATION (OPTIONAL)
///////////////////////////////////////////////////////////////

* extension contains FijiITaukeiAffiliation named iTaukei 0..1

///////////////////////////////////////////////////////////////
// TELECOM
///////////////////////////////////////////////////////////////

* telecom 0..*
* telecom ^short = "Professional contact details"

///////////////////////////////////////////////////////////////
// ADDRESS
///////////////////////////////////////////////////////////////

* address 0..*
* address only FijiAddress
* address ^short = "Practice or correspondence address"

///////////////////////////////////////////////////////////////
// GENDER
///////////////////////////////////////////////////////////////

* gender 0..1 MS
* gender ^short = "Administrative gender"

///////////////////////////////////////////////////////////////
// QUALIFICATIONS
///////////////////////////////////////////////////////////////

* qualification 0..*
* qualification ^short = "Professional qualifications"
* qualification.code 1..1

///////////////////////////////////////////////////////////////
// COMMUNICATION
///////////////////////////////////////////////////////////////

* communication 0..*
* communication ^short = "Languages practitioner can use"

