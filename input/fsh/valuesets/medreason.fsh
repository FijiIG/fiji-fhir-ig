// ValueSet for MedicationRequest Reason
ValueSet: FijiMedicationRequestReasonVS
Id: fiji-medication-request-reason-vs
Title: "MedicationRequest reason code valueset"
Description: 
"""MedicationRequest reason valueset for Fiji Core. 
Proposed valueset is taken from SNOMED Problem/Diagnosis refsets.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* include codes from system $SCT where expression = "^ 32570581000036105|Problem/Diagnosis reference set|"
// SNOMED rule: Intersect Clinical Finding with the IPS RefSet using ECL
* include codes from system $SCT where expression = "< 404684003 |Clinical finding| AND ^ 10811000132104 |International Patient Summary reference set|"
// ICD-10: These codes are included for support of historic data and until SNOMED is fully supported
* include codes from system $ICD10AM