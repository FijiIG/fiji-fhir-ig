Profile: FijiProcedure
Parent: Procedure
Id: fiji-procedure
Title: "Fiji Healthcare Procedure"
Description: """
## Fiji Healthcare Procedure
This resource is used to record the details of current and historical procedures performed on or for a patient. 
A procedure is an activity that is performed on, with, or for a patient as part of the provision of care. 
Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counseling, physiotherapy, 
personal support services, adult day care services, non-emergency transportation, home modification, exercise, etc. 
Procedures may be performed by a healthcare professional, a service provider, a friend or relative or in some cases by the 
patient themselves.
"""
* basedOn 0..* MS
* basedOn only Reference(FijiServiceRequest)

* status 1..1 MS
* category 0..1 MS
* category from $proc-cat-vs (preferred)
* code 1..1 MS
* code from $proc-code-ips-vs (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* performed[x] 0..1 MS
* performer MS
* performer.actor only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization or FijiPatient)
* reasonCode 0..* MS
* reasonCode from $proc-reason-vs (preferred)
* bodySite MS
* bodySite from FijiBodySiteVS (extensible)
* outcome 0..1 MS
* outcome from $proc-outcome-vs (preferred)
* complication 0..* MS
* complication from FijiConditionCodeVS (preferred)
* note MS
