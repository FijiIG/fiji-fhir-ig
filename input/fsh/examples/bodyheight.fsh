Instance: Example-BodyHeight
InstanceOf: FijiHeight
Usage: #example
Title: "Example Body Height"
Description: "Example body height observation including measurement device reference."

* status = #final
* category[VSCat] = $obs-cat-cs#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-08T09:16:00+10:00"
* performer = Reference(Practitioner/FijiPractitionerExample)

* valueQuantity.value = 168.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm

* device = Reference(Device/example-height-measurement)