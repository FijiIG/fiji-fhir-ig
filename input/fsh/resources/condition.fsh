// Condition/Diagnosis for Fiji Core
Profile: FijiCondition
Parent: Condition
Id: fiji-condition
Title: "Fiji Condition"
Description: "Profile of Condition as defined for Fiji Core IG."
* code 1..1
* code from FijiConditionCodeVS (extensible)
* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* severity 0..1 MS
* bodySite from FijiBodySiteVS (extensible)
* subject only Reference(FijiPatient)
* onsetDateTime MS
* abatement[x] MS
* evidence.code from FijiEvidenceVS (preferred)
* note MS
