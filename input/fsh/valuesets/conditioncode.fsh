// ValueSet for Problem/Diagnosis Codes
ValueSet: FijiConditionCodeVS
Id: fiji-condition-code-vs
Title: "Condition/Diagnosis code valueset"
Description: 
"""
Condition Code valueset for Fiji Core. 
Proposed valueset is taken from SNOMED codes curated for International Patient Summary.
Includes "clinical finding"  codes and codes for "situation with explicit content".
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* ^version = "0.1.0"

// This options Intersects Clinical Finding and Situation with explict context with the IPS RefSet
// * include codes from system $SCT where constraint = "< 404684003 AND ^ 816080008"
// * include codes from system $SCT where constraint = "< 243796009 AND ^ 816080008"

// This options includes all Clinical Finding and Situation with explict context
* include codes from system $SCT where constraint = "< 404684003"
* include codes from system $SCT where constraint = "< 243796009"


// ICD-10: These codes are included for support of historic data and until SNOMED is fully supported
* include codes from system $ICD10AM