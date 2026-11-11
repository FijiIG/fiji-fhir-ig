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

// SNOMED rule: Intersect Clinical Finding with the IPS RefSet using ECL
// SNOMED: Also pull in clinical history concepts ("Situation with explicit context") from the IPS RefSet
* include codes from system $SCT where constraint = "< 404684003 AND ^ 816080008"
* include codes from system $SCT where constraint = "< 243796009 AND ^ 816080008"


// ICD-10: These codes are included for support of historic data and until SNOMED is fully supported
* include codes from system $ICD10AM