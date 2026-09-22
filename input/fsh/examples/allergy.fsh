Instance: FijiAllergyIntoleranceExample
InstanceOf: FijiAllergyIntolerance
Usage: #example
Title: "Fiji AllergyIntolerance Example"
Description: "Example of an AllergyIntolerance for a patient with a confirmed penicillin allergy."

* clinicalStatus = #active
* verificationStatus = #confirmed
* type = #allergy
* category = #medication
* criticality = #high

* code = $SCT#91936005 "Penicillin"
* patient = Reference(Patient/FijiPatientExample)
* onsetDateTime = "2024-06-15"

* recorder = Reference(Patient/FijiPractitionerExample)

* note.text = "Patient reports a previous allergic reaction to penicillin."

* reaction.manifestation = $SCT#39579001 "Anaphylaxis"
* reaction.severity = #severe