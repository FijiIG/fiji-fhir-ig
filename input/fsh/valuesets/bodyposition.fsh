ValueSet: FijiBodyPositionVS
Id: fiji-body-position-vs
Title: "Body Position Value Set"
Description: "SELECT SNOMED CT code system values the position in which the individual was in during a measurement."
* ^experimental = false
* ^version = "0.1.0"

// include SNOMED CT findings for body position
* include codes from system $SCT where constraint = "< 9851009"
