Instance: Example-BodyWeight
InstanceOf: FijiWeight
Usage: #example
Title: "Example Body Weight"
Description: """
Example of Body Weight vital measurement
"""

* status = #final
* category[VSCat] = $obs-cat-cs#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-08T09:15:00+10:00"
* performer = Reference(Practitioner/FijiPractitionerExample)
* encounter = Reference(Encounter/FijiEncounterExample)

* valueQuantity.value = 72.4
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg

* device = Reference(Device/example-weighing-scale)