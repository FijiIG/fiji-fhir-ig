ValueSet: FijiAllergyAgentVS
Id: fiji-allergy-agent-vs
Title: "Allergy Causative Agent Value Set for Fiji Patient"
Description: "A subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS."
* ^status = #active

// Intersecting allergen hierarchies with the IPS Reference Set
* include codes from system $SCT where expression = "< 762766007 |Edible substance| AND ^ 10811000132104 |International Patient Summary reference set|"
* include codes from system $SCT where expression = "< 406455002 |Allergen class| AND ^ 10811000132104 |International Patient Summary reference set|"
* include codes from system $SCT where expression = "< 425620007 |Metal| AND ^ 10811000132104 |International Patient Summary reference set|"
* include codes from system $SCT where expression = "< 373873005 |Pharmaceutical / biologic product| AND ^ 10811000132104 |International Patient Summary reference set|"
* include codes from system $SCT where expression = "< 410942007 |Drug or medicament| AND ^ 10811000132104 |International Patient Summary reference set|"