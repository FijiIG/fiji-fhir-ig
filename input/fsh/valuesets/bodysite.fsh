ValueSet: FijiBodySiteVS
Id: fiji-body-site-vs
Title: "Body Site (Anatomical Structure) Value Set"
Description: """
Valueset for bodysite/anatomical structures.
Used for Condition.bodySite and Immunization.site
Values from SNOMED CT anatomical structures.
"""
* ^status = #active
* ^experimental = false
* ^version = "0.1.0"
* ^publisher = "MHMS Fiji"

// Pulls the entire anatomical structure tree as defined by the HL7 IPS standard
* include codes from system $SCT where constraint = "< 442083009"
