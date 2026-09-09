Instance: OxygenSaturationExample
InstanceOf: FijiOxygenSaturation
Usage: #example
Title: "Oxygen Saturation Observation"
Description: "Oxygen saturation measured by pulse oximetry"

* status = #final

* category[VSCat] = $obs-cat-cs#vital-signs "Vital Signs"

* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"

* subject = Reference(Patient/FijiPatientExample)
* encounter = Reference(FijiEncounterExample)

* effectiveDateTime = "2026-09-08T10:15:00+10:00"

* valueQuantity.value = 97
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $obs-interp-cs#N "Normal"

* device = Reference(Device/PulseOximeterExample)