// Condition registered
Profile: FijiCondition
Parent: Condition
Id: fiji-condition
Title: "Fiji Condition"
Description: "Profile of Condition as defined for South Fiji."
* code 1..1
* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* severity 0..1
* subject only Reference(FijiPatient)

