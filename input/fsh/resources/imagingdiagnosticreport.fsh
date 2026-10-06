Profile: FijiImagingDiagnosticReport
Parent: DiagnosticReport
Id: fiji-imaging-diagnostic-report
Title: "Fiji Imaging Diagnostic Report"
Description: "Diagnostic report for imaging studies in Fiji health information systems."

// Identifier list must contain one RIS Accession Number
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains risAccession 1..1 MS
* identifier[risAccession].system 1..1 MS
* identifier[risAccession].system = "http://fhir.health.gov.fj/NamingSystem/ris-accession-number"
* identifier[risAccession].value 1..1 MS

* basedOn 0..* MS
* basedOn only Reference(FijiServiceRequest)
* status 1..1 MS

// Identifier supports DICOM and/or HL7 valuesets for category for maximum flexiblity
* category 1..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains
    hl7DiagnosticService 0..1 MS and
    dicomModality 0..1 MS
* category[hl7DiagnosticService] from $obs-diag-svc-vs (required)
* category[hl7DiagnosticService].coding.system = $obs-diag-svc-cs
* category[dicomModality] from FijiDCMModalityVS (required)
* category[dicomModality].coding.system = $DCM

* code 1..1 MS
* code from FijiRadiologyFindingsVS (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* effective[x] 1..1 MS
* issued 1..1 MS
* performer MS
* performer only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* resultsInterpreter 0..* MS
* resultsInterpreter only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* presentedForm 1..* MS
* presentedForm.contentType 1..1 MS
* presentedForm.data 1..1 MS
* presentedForm.language MS
* presentedForm.language from $lang-vs