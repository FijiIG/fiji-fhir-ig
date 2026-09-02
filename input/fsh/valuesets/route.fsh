ValueSet: FijiMedicationRouteVS
Id: fiji-medication-route-vs
Title: "Fiji Medication and Vaccine Route Value Set"
Description: """
Valueset for medication and vaccine route.
Used for Medications and Immunization.route
Values are descendants from SNOMED CT Route of Administration concept.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"

* include codes from system $SCT where concept descendent-of #284009009
