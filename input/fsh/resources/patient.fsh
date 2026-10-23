Profile: FijiPatient
Parent: Patient
Id: fiji-patient
Title: "Fiji Patient"
Description: """
# Fiji Patient

## Overview

The `FijiPatient` profile defines the representation of a patient in Fiji healthcare information systems. It builds on the FHIR `Patient` resource and establishes requirements and guidance for recording patient identity, names, demographic information, administrative geography, cultural affiliation, and other relevant personal characteristics.

The profile supports consistent patient identification across healthcare settings through a mandatory national health number, while allowing additional identifiers such as national identification numbers and facility-specific medical record numbers.

It also supports Fiji-specific naming conventions through `FijiHumanName`, administrative zone information through `FijiAdminZone`, and iTaukei cultural and genealogical affiliation through `FijiITaukeiAffiliation`. Additional extensions support nationality, religious affiliation, occupation, and ethnicity.

The profile encourages the use of Fiji-specific resource profiles where available, while retaining compatibility with standard FHIR resources.

## Scope and Usage

`FijiPatient` is intended to represent a person receiving or having received healthcare services within the scope of the Fiji Implementation Guide.

It supports:

- Identification of patients using a mandatory national health number and other applicable identifiers.
- Recording of official and usual names, including culturally appropriate naming conventions.
- Representation of health administration zones relevant to the patient's care.
- Recording of iTaukei cultural and genealogical affiliations when applicable.
- Recording of nationality, religious affiliation, occupation, and ethnicity where known and appropriate.
- Recording of basic demographic information, including gender and date of birth.
- Recording of patient addresses, languages, healthcare providers, and managing organizations.
- Linking to other records concerning the same person, including related persons.

Optional demographic and cultural information should be recorded only when available, relevant, and appropriate for the intended healthcare purpose.

## Key Elements

| Element | Cardinality | Description and implementation guidance |
|---|---|---|
| `identifier` | 1..* | Identifiers assigned to the patient. At least one identifier is required. Each identifier must have a `system` and `value`. Additional identifiers may include national identification numbers and medical record numbers. |
| `identifier[nationalHealthNumber]` | 1..1 | Mandatory national health number. The identifier system must be `http://fhir.health.gov.fj/identifier/national-health-number`. The identifier value must be present. |
| `name` | 1..* | Patient names represented using `FijiHumanName`. At least one name is required. Implementations should distinguish official names from usual or preferred names according to the naming conventions supported by the profile. |
| `extension[adminZone]` | 0..1 | References `FijiAdminZone`, which supports coded administrative geography associated with the patient's care, including division, subdivision, medical area, nursing zone, and settlement. |
| `extension[iTaukei]` | 0..1 | References `FijiITaukeiAffiliation`, which supports iTaukei cultural and genealogical affiliation, including yasana (province), tikina, korodine (village), yavusa, mataqali, and tokatoka (family). This extension is optional at the profile level and is relevant to patients for whom the information applies. |
| `extension[nationality]` | 0..1 | Records the patient's nationality using the patient-nationality extension. The nationality code is drawn from the ISO country value set, with a required binding. The extension's `code` subextension carries the coded value. |
| `extension[religion]` | 0..1 | Records the patient's religious affiliation using the patient-religion extension. The terminology binding is extensible and is based on the HL7 ReligiousAffiliation value set. |
| `extension[occupation]` | 0..1 | Records the patient's occupation using `FijiPatientOccupation`. The extension is marked as Must Support. A definitive value set is yet to be specified. |
| `extension[ethnicity]` | 0..1 | Records the patient's ethnicity using `FijiPatientEthnicity`. The extension is marked as Must Support. A definitive value set is yet to be specified. |
| `gender` | 0..1 | Records the patient's administrative gender where known. Must Support. |
| `birthDate` | 0..1 | Records the patient's date of birth where known. Must Support. The date may be identified as estimated using the `BirthDateEstimatedIndicator` extension. |
| `address` | 0..* | Patient addresses represented using `FijiAddress`. Multiple addresses may be recorded where applicable. |
| `generalPractitioner[practitioner]` | 0..* | References practitioners responsible for the patient's care. References may target `FijiPractitioner` or the standard `Practitioner` resource. Fiji-specific profiles are preferred where available. |
| `generalPractitioner[role]` | 0..* | References practitioner roles responsible for the patient's care. References may target `FijiPractitionerRole` or the standard `PractitionerRole` resource. Fiji-specific profiles are preferred where available. |
| `managingOrganization` | 0..1 | References the organization responsible for the patient. May target `FijiOrganization` or the standard `Organization` resource. Fiji-specific profiles are preferred where available. |
| `communication` | 0..* | Records languages the patient can use for communication. |
| `link.other` | 1..1 per link | References another record concerning the same person, using `FijiPatient` or `FijiRelatedPerson`. The cardinality of `link` itself is inherited from the base `Patient` resource. |

## Fiji-Specific Extensions

### Health Administration Zone

The `FijiAdminZone` extension represents the administrative geography relevant to the patient's healthcare. It supports coded values for:

- Division
- Subdivision
- Medical area
- Nursing zone
- Settlement

These values can support patient registration, service catchment identification, care coordination, reporting, and health service planning.

The administration zone is distinct from the patient's cultural or genealogical affiliation. Implementations should use the appropriate extension for each purpose rather than treating administrative geography and traditional affiliation as interchangeable.

### iTaukei Affiliation

The `FijiITaukeiAffiliation` extension represents culturally and genealogically relevant iTaukei affiliation. It supports coded values for:

- Yasana (province)
- Tikina
- Korodine (village)
- Yavusa
- Mataqali
- Tokatoka (family)

The extension provides a structured representation of affiliation rather than relying on free-text descriptions. The individual values should be populated when known and appropriate, without assuming that all levels of affiliation will be available for every patient.

The extension is optional in the `FijiPatient` profile. Its use should respect patient preferences, applicable governance requirements, and the intended purpose of collecting the information.

### Nationality

The patient-nationality extension records the patient's nationality using a coded country value. The profile requires the extension's `code` subextension to use the ISO country value set.

Nationality should be distinguished from citizenship, place of birth, ethnicity, and current residence, as these concepts are not necessarily equivalent.

### Religious Affiliation

The patient-religion extension records the patient's religious affiliation. Its terminology is based on the HL7 ReligiousAffiliation value set with an extensible binding.

Religious affiliation is optional and should be recorded where appropriate to the care context and the patient's expressed information.

### Occupation

The `FijiPatientOccupation` extension records the patient's occupation. The extension is optional but is designated Must Support.

A definitive value set is yet to be specified. Implementations should follow the terminology guidance established by the Fiji Implementation Guide when available.

### Ethnicity

The `FijiPatientEthnicity` extension records the patient's ethnicity. The extension is optional but is designated Must Support.

A definitive value set is yet to be specified. Implementations should use the terminology guidance established by the Fiji Implementation Guide when available.

## Naming Requirements

All patient names must conform to `FijiHumanName`. At least one name must be recorded.

The profile includes the following invariant:

`pac-pat-1`: At least one name must have `use = usual` or `use = official`.

This invariant has warning severity. It encourages implementations to identify either a usual name for everyday use and display, or an official name for formal identification, without making either specific name-use category an unconditional validation requirement.

Where both names are available, implementations should preserve their distinct purposes. The usual name is generally appropriate for routine display, while the official name supports formal identification and medico-legal processes.

## Patient Identification

The profile requires at least one patient identifier and mandates exactly one identifier slice for the national health number.

The national health number identifier must use the following system URI:

`http://fhir.health.gov.fj/identifier/national-health-number`

The identifier's value is mandatory. Other identifiers may be recorded using their appropriate identifier systems, including national identification numbers and facility-specific medical record numbers.

Identifiers should be preserved with their assigning system so that values originating from different identifier namespaces are not incorrectly treated as equivalent.

## Demographic Information

The profile supports the recording of gender and date of birth, with both elements marked Must Support.

Date of birth may be uncertain or estimated. Where an estimated date of birth is recorded, the `BirthDateEstimatedIndicator` extension can indicate that the date is estimated rather than confirmed.

Addresses must conform to `FijiAddress`, allowing address information to follow the Fiji-specific representation defined by the Implementation Guide.

Patient languages are recorded through `communication`, supporting appropriate communication and continuity of care.

## Care Providers and Organizational Responsibility

The `generalPractitioner` element supports references to practitioners and practitioner roles. The profile distinguishes these reference types through slicing:

- `generalPractitioner[practitioner]` references a `FijiPractitioner` or standard `Practitioner`.
- `generalPractitioner[role]` references a `FijiPractitionerRole` or standard `PractitionerRole`.

The `managingOrganization` element identifies the organization responsible for the patient and may reference a `FijiOrganization` or standard `Organization`.

Implementations should prefer Fiji-specific profiles where available, while permitting standard FHIR resources for interoperability.

## Must Support and Conformance Notes

Elements marked Must Support indicate that implementations are expected to support the element in accordance with the Implementation Guide's conformance expectations. Must Support does not, by itself, mean that the element must contain a value in every instance.

The following elements are explicitly marked Must Support in the supplied profile:

- National health number identifier system and value
- Gender
- Date of birth
- Estimated date-of-birth indicator extension
- Occupation extension
- Ethnicity extension

The profile also defines mandatory cardinalities for identifiers, identifier system and value, the national health number slice, and patient names. These cardinality requirements must be distinguished from Must Support expectations.

## Implementation Considerations

1. **Patient identity:** Ensure that the mandatory national health number is recorded using the prescribed identifier system URI.
2. **Name handling:** Use `FijiHumanName` and distinguish official and usual names where the information is available.
3. **Administrative geography:** Use `FijiAdminZone` for healthcare administration and service geography.
4. **Cultural affiliation:** Use `FijiITaukeiAffiliation` for relevant iTaukei cultural and genealogical information, without substituting administrative geography for traditional affiliation.
5. **Terminology:** Apply the required ISO country value set for nationality and the specified extensible terminology binding for religious affiliation.
6. **Terminology development:** Complete the occupation and ethnicity value set definitions before imposing more specific terminology conformance requirements.
7. **Data quality:** Represent estimated dates of birth explicitly and preserve identifier systems.
8. **Interoperability:** Prefer Fiji-specific profiles for practitioners, practitioner roles, organizations, addresses, and related persons when available, while maintaining compatibility with standard FHIR resources.
9. **Privacy and appropriate use:** Collect and disclose cultural, religious, and other personal information in accordance with applicable privacy, governance, and healthcare requirements.

## Related Profiles and Extensions

| Conformance artifact | Purpose |
|---|---|
| `FijiHumanName` | Fiji-specific patient name representation |
| `FijiAddress` | Fiji-specific address representation |
| `FijiAdminZone` | Healthcare administrative geography |
| `FijiITaukeiAffiliation` | iTaukei cultural and genealogical affiliation |
| Patient-nationality extension | Patient nationality using coded country values |
| Patient-religion extension | Patient religious affiliation |
| `FijiPatientOccupation` | Patient occupation |
| `FijiPatientEthnicity` | Patient ethnicity |
| `BirthDateEstimatedIndicator` | Indicates an estimated date of birth |
| `FijiPractitioner` | Fiji-specific practitioner representation |
| `FijiPractitionerRole` | Fiji-specific practitioner role representation |
| `FijiOrganization` | Fiji-specific organization representation |
| `FijiRelatedPerson` | Fiji-specific related-person representation |
"""


///////////////////////////////////////////////////////////////
// IDENTIFIERS
///////////////////////////////////////////////////////////////

* identifier 1..*
* identifier ^short = "Identifers (e.g., national ID, medical record number)"
* identifier ^definition = "Strongly recommended to includes national identification numbers as well as other medical record numbers."
* identifier.system 1..1 MS
* identifier.value 1..1 MS

// Slice identifiers by their system URI
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

// Mandatory national health number
* identifier contains nationalHealthNumber 1..1 MS
* identifier[nationalHealthNumber].system 1..1
* identifier[nationalHealthNumber].system = "http://fhir.health.gov.fj/identifier/national-health-number" (exactly)
* identifier[nationalHealthNumber].value 1..1

// -----------------------------
// Name Requirements
// -----------------------------

* name 1..*
* name only FijiHumanName

// -----------------------------
// Health Administration Zone Extension
// -----------------------------

* extension contains FijiAdminZone named adminZone 0..1

// -----------------------------
// iTaukei Extension Integration
// -----------------------------

* extension contains FijiITaukeiAffiliation named iTaukei 0..1

// -----------------------------
// Nationality Extension
// -----------------------------

* extension contains $patient-nationality named nationality 0..1
* extension[nationality] ^short = "The patient's nationality"
* extension[nationality] ^definition = "The nationality represented using ISO 3166 2 letter country codes."
* extension[nationality].extension[code].value[x] from $iso-country-vs (required)

// -----------------------------
// Religion Extension
// -----------------------------

* extension contains $patient-religion named religion 0..1
* extension[religion] ^short = "The patient's religious affiliation"
* extension[religion] ^definition = "The patient's professed religious affilition with an extensible valueset based on [ReligiousAffiliation valueset](http://terminology.hl7.org/ValueSet/v3-ReligiousAffiliation)."

// -----------------------------
// Occupation Extension
// -----------------------------

* extension contains FijiPatientOccupation named occupation 0..1
* extension[occupation] MS
// TODO: need to define a valueset

// -----------------------------
// Ethnicity Extension
// -----------------------------

* extension contains FijiPatientEthnicity named ethnicity 0..1
* extension[ethnicity] MS
// TODO: need to define a valueset for Ethnicity


// -----------------------------
// Basic Demographics
// -----------------------------

* gender MS
* birthDate MS
* birthDate ^short = "Date of birth, may be flagged as verified via extension"
* birthDate.extension contains BirthDateVerifiedIndicator named birthDateVerified 0..1 MS

* address 0..*
* address only FijiAddress

// -----------------------------
// Display Guidance
// -----------------------------

* name ^short = "At least one name required; usual preferred for display"


* generalPractitioner ^slicing.discriminator.type = #type
* generalPractitioner ^slicing.discriminator.path = "$this"
* generalPractitioner ^slicing.rules = #open

* generalPractitioner contains
    practitioner 0..* and
    role 0..*

* generalPractitioner[practitioner] only Reference(
    FijiPractitioner or Practitioner
)

* generalPractitioner[role] only Reference(
    FijiPractitionerRole or PractitionerRole
)

* generalPractitioner ^short = "Care providers for this patient; prefer Fiji-specific profiles"

* managingOrganization 0..1
* managingOrganization only Reference(FijiOrganization or Organization)
* managingOrganization ^short = "Organization responsible for the patient; prefer Fiji specific profiles"

///////////////////////////////////////////////////////////////
// COMMUNICATION
///////////////////////////////////////////////////////////////

* communication 0..*
* communication ^short = "Languages patient can use"

// Link to another resource that concerns the same person

* link.other only Reference(FijiPatient or FijiRelatedPerson)


// Encourage but do not require official/usual
Invariant: pac-pat-1
Description: "At least one name must have use = usual or official"
Expression: "name.where(use = 'usual' or use = 'official').exists()"
Severity: #warning
