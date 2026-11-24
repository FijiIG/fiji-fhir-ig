// ValueSet for Service Type
ValueSet: FijiServiceTypeVS
Id: fiji-service-type-vs
Title: "Service Type Valueset"
Description: 
"""
Service Type valueset for Fiji Core. 
Proposed valueset is taken from SNOMED Services codes.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* ^version = "0.1.0"

* include codes from system $SCT where constraint = "< 224930009"
