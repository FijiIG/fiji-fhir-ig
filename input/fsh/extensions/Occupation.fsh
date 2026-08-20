Extension: FijiPatientOccupation
Id: fiji-patient-occupation
Title: "Fiji Patient Occupation"
Description: """
Describes occupation of a Fiji Patient.  This is based on the structure of the NZ FHIR Base extension for 
[ACC Patient Occupation](http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation)
but is separately defined so as to enable a national/regional valueset for occupation codes.
"""

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
