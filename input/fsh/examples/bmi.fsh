Instance: Example-BMI
InstanceOf: FijiBMI
Usage: #example

* status = #final

* category = $obs-cat-cs#vital-signs "Vital Signs"

* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"

* subject = Reference(FijiPatientExample)
* encounter = Reference(FijiEncounterExample)
* effectiveDateTime = "2026-09-07"

* valueQuantity.value = 24.8
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2

* interpretation = $obs-interp-cs#H "High"