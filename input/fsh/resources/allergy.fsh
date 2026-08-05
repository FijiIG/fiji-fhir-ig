// Medication Allergies 
Profile: FijiAllergyIntolerance
Parent: AllergyIntolerance
Id: fiji-allergy-intolerance
Title: "Fiji Allergy/Intolerance"
Description: "Profile of Allergy/Intolerance for Fiji Patient"
* code 1..1 MS
* code from FijiAllergyAgentVS (extensible)
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* criticality 0..1 MS
* patient only Reference(FijiPatient)
* onsetDateTime MS
* note MS
* reaction MS
* reaction.manifestation 1..* MS
* reaction.manifestation from FijiConditionCodeVS (preferred)
* reaction.severity MS

