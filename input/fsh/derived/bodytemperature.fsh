Profile: FijiVitalBodyTemperature
Parent: FijiObservation
Id: fiji-vital-body-temperature
Title: "Body Temperature Vitals - Fiji"
Description: "Profile for body temperature vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#8310-5 "Body temperature"
* valueQuantity.unit = "°C"
* valueQuantity.system = $UCUM
* valueQuantity.code = #Cel
* effective[x] only dateTime
* subject only Reference(FijiPatient)