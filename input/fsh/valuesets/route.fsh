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
* ^version = "0.1.0"

* include codes from system $SCT where constraint = "< 284009009"
