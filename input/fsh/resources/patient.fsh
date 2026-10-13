Profile: FijiPatient
Parent: Patient
Id: fiji-patient
Title: "Fiji Patient"
Description: """
Patient profile for Fiji jurisdiction.

Integrates:
- FijiHumanName
- Patient-level clan affiliation
- Guidance for usual vs official name use
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
* birthDate ^short = "Date of birth, may be flagged as estimated via extension"
* birthDate.extension contains BirthDateEstimatedIndicator named birthDateEstimated 0..1 MS

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

// Encourage but do not require official/usual
Invariant: pac-pat-1
Description: "At least one name must have use = usual or official"
Expression: "name.where(use = 'usual' or use = 'official').exists()"
Severity: #warning
