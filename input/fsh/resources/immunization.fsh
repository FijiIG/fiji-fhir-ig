// Immunizations 
Profile: FijiImmunization
Parent: Immunization
Id: fiji-immunization
Title: "Fiji Immunization"
Description: """
# Profile of Immunizations for Fiji Patient

This profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history 
associated with a patient. 

## Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (completed, entered-in-error, not-done)
* vaccineCode - a vaccine code from the Immunization ValueSet
* patient - a reference to a  Fiji Patient
* occurrence[x] -  the vaccine administration date can be recorded using one of the two options below
  * occurenceDateTime  (preferred)
  * occurrenceString - this is a free text representation of the date or administration
* lotNumber - is not mandatory but should be recorded if known

## Terminology  

Immunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists
for the vaccine.  Additional codes may be used where no matching code is present.

## Considerations & Decisions for DH TAG  

These considerations/decisions need to be agreed or validated by DH TAG for this profile.

A. Terminology: For the draft version of this IG,  the Immunisation Valueset proposed has been taken from the set of CVX codes.  
CVX is widely used internationally,  but alternative options include SNOMED GPS or MSupply codes (Tamanu).

B. Confirm proposed constraints: select the Differential Table tab and review the current constraints

C. Add any further constraints:  select the Snapshot Table tab below and determine if any additional elements should be required/must support etc.


## Alignment with Regional IGs  

This profile aligns element constraints with AU Core FHIR Immunization profile - 
except that Australian specific vaccine coding and extensions have not been included.  
New Zealand Base FHIR specification does not include Immunization. 
"""
* status 1..1 MS
* vaccineCode 1..1 MS
* vaccineCode from ImmVS (extensible)
* patient only Reference(FijiPatient)
* occurrence[x] 1..1 MS
* occurrenceDateTime MS
* lotNumber MS
* note MS

