Instance: FijiEncounterExample
InstanceOf: FijiEncounter
Usage: #example
Title: "Example outpatient encounter"
Description: "Example of an outpatient encounter in a Fiji healthcare setting"

* status = #finished

* identifier[0].system = "https://fhir.health.gov.fj/encounter"
* identifier[0].value = "ENC-2026-000123"

* class = $enc-class-cs#AMB "ambulatory"

* type[0] = $SCT#308335008 "Patient encounter procedure"
* type[0].text = "Outpatient consultation"

* subject = Reference(Patient/FijiPatientExample)

* participant[0].type = $participant-type-cs#PPRF "primary performer"
* participant[0].individual = Reference(FijiPractitionerExample)

* period.start = "2026-09-09T09:00:00+10:00"
* period.end = "2026-09-09T09:30:00+10:00"

* reasonCode[0] = $SCT#386661006 "Fever"
* reasonCode[0].text = "Fever"

* location[0].location = Reference(FijiLocationExample)
* location[0].status = #completed

* serviceProvider = Reference(FijiOrganizationExample)