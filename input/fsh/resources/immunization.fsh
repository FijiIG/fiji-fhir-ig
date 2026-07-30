// ValueSet for Immunization Status Reason Codes
ValueSet: ImmStatusReasonVS
Id: immunization-status-reason
Title: "Immunization Status Reason valueset for reason a vaccine was not administered"
Description: 
"""
Status Reason codes for reason a vaccine was not administered. 
Initial codes used are ICD-11 codes from DAK.
TODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen
"""
* include $ICD11MMS#QC04.0 "Immunization not carried out due to patient having had the disease"
* include $ICD11MMS#QC04.1 "Immunization not carried out because of acute illness"
* include $ICD11MMS#QC04.2 "Immunization not carried out because of chronic illness or condition of patient"
* include $ICD11MMS#QC04.3 "Immunization not carried out because of immune-compromised state of patient"
* include $ICD11MMS#QC04.4 "Immunization not carried out because of patient allergy to vaccine or component"
* include $ICD11MMS#QC04.5 "Immunization not carried out because of patient refusal"
* include $ICD11MMS#QC04.6 " Immunization not carried out because of caregiver refusal"
* include $ICD11MMS#QC04.7 "Immunization not carried out due to lack of availability"
* include $ICD11MMS#QC04.Y "Immunization not carried out for other reasons"
* include $ICD11MMS#QC04.Z "Immunization not carried out for unspecified reason"

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
* statusReason -  reason a vaccine was not administered (currently uses ICD11 valueset from DAK, suggest converting to SNOMED CT)
* vaccineCode - a vaccine code from the Immunization ValueSet
This element should be coded with terminology from the defined valueset. If no appropriate value is available
then a coded value from another terminology may be used. Free text entry should only be permitted if no 
coded value is available or to record historic immunizations.
* patient - a reference to a  Fiji Patient
* occurrence[x] -  the vaccine administration date can be recorded using one of the two options below
  * occurenceDateTime  (recommended for use where possible)
  * occurrenceString - this is a free text representation of the date or administration

## Other elements defined
* lotNumber - is not mandatory but should be recorded if known
* protocolApplied.doseNumber - should be recorded if multiple doses are required
* protocolApplied.seriesDoses - should be recorded where multiple doses are recommended for full immunity
* note - Extra information about the immunization that is not conveyed by the other attributes



## Terminology  

Immunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists
for the vaccine.  Additional codes may be used where no matching code is present.



## Alignment with Regional IGs  

The following specifications have been reviewed in development of this profile. 
-	Australian Clinical Data for Interoperability Release 2
-	New Zealand Clinical Data for Interoperability 2026
-	Australian AU Core Implementation Guide 2.0.0
-	WHO DAK Administer Vaccine Immunization Elements

"""
* status 1..1 MS
* statusReason from ImmStatusReasonVS (extensible)
* vaccineCode 1..1 MS
* vaccineCode from ImmVS (extensible)
* patient only Reference(FijiPatient)
* occurrence[x] 1..1 MS
* occurrenceDateTime MS
* lotNumber MS
* note MS

