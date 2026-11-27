ValueSet: FijiRadiologyFindingsVS
Id: fiji-radiology-findings-vs
Title: "Radiology Findings Value Set"
Description: "Fiji radiology findings including SNOMED CT concepts filtered for radiology and imaging findings used within an IPS context."
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* ^version = "0.1.0"

* include codes from system $SCT where constraint = "<<  365853002"
* include codes from system $SCT where constraint = "<  118247008"
