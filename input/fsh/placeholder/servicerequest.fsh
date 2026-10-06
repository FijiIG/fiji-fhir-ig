// A device that is used in the provision of healthcare in this IG scope
Profile: FijiServiceRequest
Parent: ServiceRequest
Id: fiji-service-request
Title: "Fiji Healthcare Service Request"
Description: """
This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.

A service request  is a record of a request for a procedure or diagnostic or other service to be planned, proposed, or performed,
with or on a patient. The request will lead to either a Procedure or DiagnosticReport, which in turn may reference associated 
resources/documentation such as observations, images, findings that are relevant to the treatment/management of the subject. 

This resource may be used to share relevant information required to support a referral or a transfer of care request from one 
practitioner or organization to another when a patient is required to be referred to another provider for a consultation
 /second opinion and/or for short term or longer term management of one or more health issues or problems..
"""
* identifier 1..* MS
* status 1..1 MS
* intent 1..1 MS
* category MS
* code MS
* subject 1..1 MS 
* subject only Reference(FijiPatient)
* note MS