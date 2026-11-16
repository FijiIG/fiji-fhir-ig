Instance: AppendectomyProcedureExample
InstanceOf: FijiProcedure
Title: "Appendectomy Procedure Example"
Description: "Example of a patient undergoing a surgical appendectomy."

* status = #completed

* category = $SCT#387713003 "Surgical procedure"

* code = $SCT#80146002 "Appendectomy"

* subject = Reference(Patient/FijiPatientExample)

* encounter = Reference(Encounter/FijiEncounterExample)

* performedDateTime = "2026-11-16T09:30:00+12:00"

* performer[0].actor = Reference(Practitioner/FijiPractitionerExample)
* performer[0].function = $SCT#304292004 "Surgeon"