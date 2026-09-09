Instance: ExampleBloodPressure
InstanceOf: FijiVitalBloodPressure
Usage: #example

* status = #final

* category[VSCat] =  $obs-cat-cs#vital-signs "Vital Signs"

* code = $loinc#85354-9 "Blood pressure panel with all children optional"

* subject = Reference(Patient/ExamplePatient)

* effectiveDateTime = "2026-09-07T10:30:00+10:00"

* interpretation = $obs-interp-cs#H "High"

* extension[bodyPosition].valueCodeableConcept =  $SCT#33586001 "Sitting position"

* component[SystolicBP].code = http://loinc.org#8480-6
* component[SystolicBP].valueQuantity.value = 128
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #mm[Hg]
* component[SystolicBP].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N  "Normal"

* component[DiastolicBP].code = http://loinc.org#8462-4
* component[DiastolicBP].valueQuantity.value = 82
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #mm[Hg]
* component[DiastolicBP].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"