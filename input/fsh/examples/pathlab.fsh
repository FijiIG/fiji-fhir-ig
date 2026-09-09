// Pathology/Laboratory Observation Examples

// Arterial oxygen level measured in partial pressure 
Instance: ExampleArterialPO2
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example arterial oxygen partial pressure"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#2703-7 "Oxygen [Partial pressure] in Arterial blood"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-09T10:30:00+12:00"
* valueQuantity = 85 'mm[Hg]'
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm[Hg]
