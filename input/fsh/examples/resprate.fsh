Instance: RespiratoryRateExample
InstanceOf: FijiRespiratoryRate
Usage: #example

* status = #final

* category[VSCat] = $obs-cat-cs#vital-signs "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-08T10:30:00+10:00"
* performer = Reference(FijiPractitionerExample)
* encounter = Reference(FijiEncounterExample)

* valueQuantity.value = 18
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = $UCUM
* valueQuantity.code = #/min

* method = $SCT#248981007 "Respiration observation (procedure)"
* extension[bodyPosition].valueCodeableConcept =  $SCT#33586001 "Sitting position"