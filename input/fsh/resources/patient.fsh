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

* ^status = #active

///////////////////////////////////////////////////////////////
// IDENTIFIERS
///////////////////////////////////////////////////////////////

* identifier 1..*
* identifier ^short = "Identifers (e.g., national ID, medical record number)"
* identifier ^definition = "Strongly recommended to includes national identification numbers as well as other medical record numbers."

// -----------------------------
// Name Requirements
// -----------------------------

* name 1..*
* name only FijiHumanName

// -----------------------------
// Clan Extension Integration
// -----------------------------

* extension contains FijiClanAffiliation named clanAffiliation 0..*

* extension[clanAffiliation] MS


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

* extension contains FijiOccupation named occupation 0..1
* extension[occupation] MS

// TODO: need to define a valueset


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
