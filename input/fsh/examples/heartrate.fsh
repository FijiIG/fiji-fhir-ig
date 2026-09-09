Instance: HeartRateExample
InstanceOf: FijiVitalHeartRate
Usage: #example

* status = #final
* category[VSCat] = $obs-cat-cs#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(FijiPatientExample)
* effectiveDateTime = "2026-09-08T09:30:00+10:00"
* encounter = Reference(FijiEncounterExample)
* valueQuantity.value = 78
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* valueQuantity.code = #/min

// Measurement method: palpation
* method = $SCT#113011001 "Palpation"

// Measurement site: radial artery
* bodySite = $SCT#45631007 "Structure of radial artery"

* extension[bodyPosition].valueCodeableConcept =  $SCT#33586001 "Sitting position"