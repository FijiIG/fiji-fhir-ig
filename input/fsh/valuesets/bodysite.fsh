ValueSet: FijiBodySiteVS
Id: fiji-body-site-vs
Title: "Fiji Body Site (Anatomical Structure) Value Set"
Description: """
Valueset for bodysite/anatomical structures.
Used for Condition.bodySite
Values from SNOMED CT anatomical structures.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"

// Pulls the entire anatomical structure tree as defined by the HL7 IPS standard
* include codes from system $SCT where expression = "< 442083009 |Anatomical or acquired body structure (body structure)|"
