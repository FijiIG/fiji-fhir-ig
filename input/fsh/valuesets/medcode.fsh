ValueSet: FijiMedVS
Id: fiji-med-vs
Title: "Fiji Medication ValueSet"
Description: "Fiji Medication valueset based on until Fiji-Pacific valueset is developed"
* include codes from system $MSUPPLY
// Include all SNOMED concepts descending from the Pharmaceutical/biologic product hierarchy."
* include codes from system $SCT where expression = "descendant-of 105590001"
// Include all therapeutic classification codes from the WHO ATC system."
* include codes from system $ATC