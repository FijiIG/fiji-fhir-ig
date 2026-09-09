Instance: FijiHeadCircumferenceExample
InstanceOf: FijiHeadCircumference
Usage: #example
Title: "Fiji Head Circumference Example"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#9843-4 "Head Occipital-frontal circumference"
* subject = Reference(Patient/fiji-patient-01)
* effectiveDateTime = "2026-09-09T10:15:00+12:00"
* valueQuantity = 42.5 'cm'
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm