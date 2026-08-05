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
* include codes from system $SCT where expression = "< 404684003 |Clinical finding| AND ^ 10811000132104 |International Patient Summary reference set|"
// SNOMED: Also pull in clinical history concepts ("Situation with explicit context") from the IPS RefSet
* include codes from system $SCT where expression = "< 243796009 |Situation with explicit context| AND ^ 10811000132104 |International Patient Summary reference set|"
