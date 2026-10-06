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
* include codes from system $SCT where expression = "^ 32570581000036105|Problem/Diagnosis reference set| OR ^ 32570141000036105|Procedure foundation reference set|"