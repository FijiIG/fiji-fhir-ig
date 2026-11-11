// ValueSet for Encounter Reason
ValueSet: FijiEncounterReasonVS
Id: fiji-encounter-reason-vs
Title: "Encounter reason code valueset"
Description: 
"""Encounter reason valueset for Fiji Core. 
Proposed valueset is taken from SNOMED Problem/Diagnosis and Procedure refsets.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
// include SCT codes for Problem/diagnosis ref set or 
* include codes from system $SCT where constraint = "^ 32570581000036105 OR ^ 32570141000036105"