Instance: FijiMedicationDispenseExample
InstanceOf: FijiMedicationDispense
Usage: #example
Title: "Fiji Amoxicillin Medication Dispense Example"
Description: """
Example of dispensing amoxicillin against a medication request
for FijiPatientExample.
"""

* identifier[mSupplyDispenseId].system = "http://fhir.health.gov.fj/identifier/msupply-dispense"
* identifier[mSupplyDispenseId].value = "MSD-2026-000123"

* status = #completed

* medicationCodeableConcept = $SCT#27658006 "Amoxicillin"

* subject = Reference(FijiPatientExample)

* authorizingPrescription = Reference(FijiMedicationRequestExample)

* quantity.value = 15
* quantity.unit = "capsule"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #1

* whenPrepared = "2026-10-20T09:00:00+12:00"
* whenHandedOver = "2026-10-20"

* performer.actor = Reference(FijiPractitionerExample)

* dosageInstruction.text = "Take one capsule orally three times daily for 5 days."