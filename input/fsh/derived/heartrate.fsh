// ValueSet for Heart Rate codes
ValueSet: HeartRateVS
Id: heart-rate-loinc
Title: "Heart Rate LOINC Codes"
Description: "LOINC codes for heart rate measurements, spot or average."
* include $loinc#8867-4 "Heart rate"
* include $loinc#103205-1 "Mean heart rate"

Profile: FijiVitalHeartRate
Parent: FijiObservation
Id: fiji-vital-heart-rate
Title: "Heart Rate Vitals - Fiji"
Description: "Profile for heart rate vital observations in Fiji"
* status = #final
* category = $obs-cat-cs#vital-signs
* code from HeartRateVS (preferred)
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* valueQuantity.code = #/min
//* valueQuantity.minValue = 0
//* valueQuantity.maxValue = 300
* effective[x] only dateTime
* subject only Reference(FijiPatient)