// Encounter providing care for patients in this IG scope
Profile: FijiEncounter
Parent: Encounter
Id: fiji-encounter
Title: "Fiji Healthcare Encounter"
Description: """
Profile for Fiji Healthcare Encounter
(Work in progress)
"""
* identifier 1..1 MS
* subject only Reference(FijiPatient)
* class MS
* type MS
* reasonCode MS
* reasonCode from $enc_reason-vs (extensible)
