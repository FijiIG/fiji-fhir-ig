Instance: FijiBodyTemperatureExample
InstanceOf: FijiVitalBodyTemperature
Usage: #example
Title: "Body temperature vital observation"
Description: "Body temperature observation example with reference ranges and interpretation."

* status = #final

* category[VSCat] = $obs-cat-cs#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-08T09:30:00+12:00"
* performer = Reference(Practitioner/FijiPractitionerExample)

* valueQuantity.value = 39.1
* valueQuantity.unit = "°C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel

* interpretation = $obs-interp-cs#H "High"

* bodySite = $SCT#74262004 "Structure of oral cavity"

* method = $SCT#89003005 "Oral temperature taking"

* referenceRange.low.value = 36.1
* referenceRange.low.unit = "°C"
* referenceRange.low.system = "http://unitsofmeasure.org"
* referenceRange.low.code = #Cel

* referenceRange.high.value = 38.0
* referenceRange.high.unit = "°C"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.high.code = #Cel