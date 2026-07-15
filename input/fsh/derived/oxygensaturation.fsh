Profile: FijiOxygenSaturation
Parent: FijiObservation
Id: fiji-vital-oxygen-saturation
Title: "Oxygen Saturation Vitals - Fiji"
Description: "Profile for oxygen saturation vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%
//* valueQuantity.minValue = 0
//* valueQuantity.maxValue = 100
* effective[x] only dateTime
* subject only Reference(FijiPatient)