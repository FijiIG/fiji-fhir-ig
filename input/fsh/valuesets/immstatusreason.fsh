// ValueSet for Immunization Status Reason Codes
ValueSet: ImmStatusReasonVS
Id: immunization-status-reason
Title: "Immunization Status Reason Value Set"
Description: 
"""
Status Reason codes for reason a vaccine was not administered. 
Initial codes used are ICD-11 codes from DAK.
TODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen
"""
* ^experimental = false
* ^version = "0.1.0"


* include $ICD11MMS#1498576014 "Immunization not carried out due to patient having had the disease"
* include $ICD11MMS#679809409 "Immunization not carried out because of acute illness"
* include $ICD11MMS#1650200188 "Immunization not carried out because of chronic illness or condition of patient"
* include $ICD11MMS#1200706488 "Immunization not carried out because of immune-compromised state of patient"
* include $ICD11MMS#472002267 "Immunization not carried out because of patient allergy to vaccine or component"
* include $ICD11MMS#583273619 "Immunization not carried out because of patient refusal"
* include $ICD11MMS#118051153 "Immunization not carried out because of caregiver refusal"
* include $ICD11MMS#300485628 "Immunization not carried out due to lack of availability"
* include $ICD11MMS#836689174/other "Immunization not carried out for other reasons"
* include $ICD11MMS#836689174/unspecified "Immunization not carried out for unspecified reason"