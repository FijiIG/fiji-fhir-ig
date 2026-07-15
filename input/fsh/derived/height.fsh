Profile: FijiHeight
Parent: FijiObservation
Id: fiji-vital-height
Title: "Height Vitals - Fiji"
Description: "Profile for height vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#8302-2 "Body height"
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
//* valueQuantity.minValue = 0
//* valueQuantity.maxValue = 300
* effective[x] only dateTime
* subject only Reference(FijiPatient)