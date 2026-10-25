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