Profile: FijiLaboratoryDiagnosticReport
Parent: DiagnosticReport
Id: fiji-laboratory-diagnostic-report
Title: "Fiji Laboratory Diagnostic Report"
Description: "Diagnostic report for laboratory investigations in Fiji health information systems."

// Identifier list must contain at least one identifier
* identifier 1..*
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier contains labOrder 1..1 MS
// * identifier[labOrder].system 1..1 MS
// * identifier[labOrder].system = "http://fhir.health.gov.fj/NamingSystem/lab-order-number"
// * identifier[labOrder].value 1..1 MS

* basedOn 0..* MS
* basedOn only Reference(FijiServiceRequest)
* status 1..1 MS
* category 1..1 MS
* category = $obs-diag-svc-cs#LAB
* code 1..1 MS
* code from ObsVS (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* effective[x] 1..1 MS
* issued 1..1 MS

* performer MS
* performer only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* resultsInterpreter 0..* MS
* resultsInterpreter only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization)

* specimen only Reference(FijiSpecimen)
* result 1..* MS
* result only Reference(FijiPathologyObservation)

* presentedForm 1..* MS
* presentedForm.contentType 1..1 MS
* presentedForm.data 1..1 MS
* presentedForm.language MS
* presentedForm.language from $lang-vs