Profile: FijiVitalBloodPressure
Parent: FijiObservation
Id: fiji-vital-blood-pressure
Title: "Blood Pressure Observation"
Description: "Observation profile for blood pressure using LOINC"

* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject only Reference(FijiPatient)
* effective[x] only dateTime

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains 
  Systolic 1..1 and 
  Diastolic 1..1

* component[Systolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[Systolic].valueQuantity.system = $UCUM
* component[Systolic].valueQuantity.code = #mm[Hg]
* component[Systolic].valueQuantity.unit = "mmHg"

* component[Diastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[Diastolic].valueQuantity.system = $UCUM
* component[Diastolic].valueQuantity.code = #mm[Hg]
* component[Diastolic].valueQuantity.unit = "mmHg"
