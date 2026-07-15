// Practioner Providing Care for template Patient
Profile: FijiPractitioner
Parent: Practitioner
Id: fiji-practitioner
Title: "Fiji Practitioner"
Description: """
Practitioner profile for Fiji jurisdictions supporting culturally appropriate naming 
while maintaining regulatory and medico-legal identity requirements.

Requires at least one official name (registered/licensed name).
Supports usual name for culturally recognised or commonly used name.
Supports clan affiliation as an optional extension.
"""
// TODO: 
// Consider adding a "displayName" extension for easier display of preferred name in EHRs and HIEs.
// Require at least one professional identifier slice for registration
// Bind qualification.code to a Fiji value set
// Require communication language



* ^status = #active
* ^version = "1.0.0"

///////////////////////////////////////////////////////////////
// IDENTIFIERS
///////////////////////////////////////////////////////////////

* identifier 1..*
* identifier ^short = "Professional identifiers (registration, license, etc.)"
* identifier ^definition = "Includes professional registration numbers and other practitioner identifiers."

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

* extension contains FijiClanAffiliation named clanAffiliation 0..*

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

* gender 0..1
* gender ^short = "Administrative gender"

///////////////////////////////////////////////////////////////
// QUALIFICATIONS
///////////////////////////////////////////////////////////////

* qualification 0..*
* qualification ^short = "Professional qualifications"

///////////////////////////////////////////////////////////////
// COMMUNICATION
///////////////////////////////////////////////////////////////

* communication 0..*
* communication ^short = "Languages practitioner can use"

