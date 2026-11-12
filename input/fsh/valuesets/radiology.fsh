ValueSet: FijiRadiologyFindingsVS
Id: fiji-radiology-findings-vs
Title: "Fiji Radiology/Diagnostic Findings Value Set"
Description: "Fiji radiology findings including SNOMED CT concepts filtered for radiology and imaging findings used within an IPS context."
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* include codes from system $SCT where constraint = "< 404684003 AND < 363679005"
