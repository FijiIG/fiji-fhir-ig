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
* ^version = "0.1.0"

// include SCT codes for Hospital environment & Outpatient environment & Inpatient environment
* include codes from system $SCT where constraint = "<< 285201006 OR << 43741000 OR << 440655000 OR << 440654001"