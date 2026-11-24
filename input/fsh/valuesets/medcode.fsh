ValueSet: FijiMedVS
Id: fiji-med-vs
Title: "Medication Value Set"
Description: """
Fiji Medication valueset including support for legacy codes derived from Fiji MSupply instance.
Provisionally SNOMED CT medication refset and ATC codes have also been added.
"""
* ^experimental = false
* ^version = "0.1.0"

* include codes from system FijiMedCS
// Include all SNOMED concepts descending from the Pharmaceutical/biologic product hierarchy."
* include codes from system $SCT where constraint = "< 105590001"
// Include all therapeutic classification codes from the WHO ATC system."
* include codes from system $ATC