Extension: FijiPatientEthnicity
Id: fiji-patient-ethnicity
Title: "Fiji Patient Ethnicity"
Description: """
Describes ethnicity of a Fiji Patient.  This is based on the structure of the NZ FHIR Base extension for 
[NZ Ethnicity](http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity)
but is separately defined so as to enable a national/regional valueset for ethnicity codes.
"""

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1