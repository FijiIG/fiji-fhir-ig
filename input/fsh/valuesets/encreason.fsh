// ValueSet for Encounter Reason
ValueSet: FijiEncounterReasonVS
Id: fiji-encounter-reason-vs
Title: "Encounter reason code valueset"
Description: 
"""Encounter reason valueset for Fiji Core. 
Proposed valueset is taken from SNOMED descendant of clinical findings and Procedures.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
// include SCT codes for Problem/diagnosis ref set or Procedures
* include codes from system $SCT where constraint = "< 404684003"
* include codes from system $SCT where constraint = "< 71388002"