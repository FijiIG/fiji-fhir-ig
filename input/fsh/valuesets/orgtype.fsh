ValueSet: FijiOrganizationRoleVS
Id: fiji-organization-role-vs
Title: "Fiji Healthcare Organization Role Type Value Set"
Description: """
Valueset for Healthcare Organization Role Type.
Values from SNOMED CT Hospital environment, Site of care, Outpatient environment, and Inpatient environment.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"

* include codes from system $SCT where expression = "<< 285201006|Hospital environment| OR << 43741000|Site of care| OR << 440655000|Outpatient environment| OR << 440654001|Inpatient environment|"