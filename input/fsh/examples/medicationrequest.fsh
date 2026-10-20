Instance: FijiMedicationRequestExample
InstanceOf: FijiMedicationRequest
Usage: #example
Title: "Fiji Medication Request Example"
Description: "Example prescription for amoxicillin for a Fiji patient."

* status = #active
* intent = #order

* medicationCodeableConcept = $SCT#27658006 "Amoxicillin"
* subject = Reference(FijiPatientExample)
* authoredOn = "2026-10-20"
* requester = Reference(FijiPractitionerExample)

* dosageInstruction.text = "Take one capsule orally three times daily for 5 days."