// ValueSet for MedicationRequest Reason
ValueSet: FijiMedicationRequestReasonVS
Id: fiji-medication-request-reason-vs
Title: "Medication Request Reason Value Set"
Description: 
"""MedicationRequest reason valueset for Fiji Core. 
Proposed valueset is taken from SNOMED Problem/Diagnosis refsets.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* ^version = "0.1.0"

// GP/FP Reason for Encounter reference sets

* include codes from system $SCT where constraint = "^ 450974004"
* include codes from system $SCT where constraint = "^ 450976002"
* include codes from system $SCT where constraint = "^ 450977006"
* include codes from system $SCT where constraint = "^ 450978001"
* include codes from system $SCT where constraint = "^ 450980007"
* include codes from system $SCT where constraint = "^ 450981006"

// GP/FP Health Issue reference sets

* include codes from system $SCT where constraint = "^ 450984003"
* include codes from system $SCT where constraint = "^ 450985002"
* include codes from system $SCT where constraint = "^ 450986001"
* include codes from system $SCT where constraint = "^ 450988000"
* include codes from system $SCT where constraint = "^ 450989008"
* include codes from system $SCT where constraint = "^ 450990004"

// ICD-10: These codes are included for support of historic data and until SNOMED is fully supported
* include codes from system $ICD10AM