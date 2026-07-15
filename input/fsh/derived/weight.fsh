Profile: FijiWeight
Parent: FijiObservation
Id: fiji-vital-weight
Title: "Weight Vitals - Fiji"
Description: "Profile for weight vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#29463-7 "Weight"
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
//* valueQuantity.minValue = 0
//* valueQuantity.maxValue = 500
* effective[x] only dateTime
* subject only Reference(FijiPatient)