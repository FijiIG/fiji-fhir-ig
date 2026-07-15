Profile: FijiRespiratoryRate
Parent: FijiObservation
Id: fiji-vital-respiratory-rate
Title: "Respiratory Rate Vitals - Fiji"
Description: "Profile for respiratory rate vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#9279-1 "Respiratory rate"
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* valueQuantity.code = #/min
//* valueQuantity.minValue = 0
//* valueQuantity.maxValue = 300
* effective[x] only dateTime
* subject only Reference(FijiPatient)