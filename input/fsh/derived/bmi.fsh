Profile: FijiBMI
Parent: FijiObservation
Id: fiji-vital-bmi
Title: "BMI Vitals - Fiji"
Description: "Profile for BMI vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2
//* valueQuantity.minValue = 0
//* valueQuantity.maxValue = 100
* effective[x] only dateTime
* subject only Reference(FijiPatient)