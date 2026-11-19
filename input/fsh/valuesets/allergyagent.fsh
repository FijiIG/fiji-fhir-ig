ValueSet: FijiAllergyAgentVS
Id: fiji-allergy-agent-vs
Title: "Allergy Causative Agent Value Set"
Description: "A subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances."
* ^status = #active
* ^experimental = false
* ^version = "0.1.0"


// Intersecting allergen hierarchies aligned with the IPS Reference Set
// * include codes from system $SCT where constraint = "< 762766007 AND ^ 816080008"
// * include codes from system $SCT where constraint = "< 406455002 AND ^ 816080008"
// * include codes from system $SCT where constraint = "< 425620007 AND ^ 816080008"
// * include codes from system $SCT where constraint = "< 373873005 AND ^ 816080008"
// * include codes from system $SCT where constraint = "< 410942007 AND ^ 816080008"

// Allergen hierarchies full set
* include codes from system $SCT where constraint = "< 762766007"
* include codes from system $SCT where constraint = "< 406455002"
* include codes from system $SCT where constraint = "< 425620007"
* include codes from system $SCT where constraint = "< 373873005"
* include codes from system $SCT where constraint = "< 410942007"