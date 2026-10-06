// service request for radiology
Instance: FijiImagingServiceRequestExample
InstanceOf: FijiServiceRequest
Title: "Example CT Head Service Request"
Description: "Example service request for a CT head examination."
Usage: #example

* id = "sr-ct-head-001"
* identifier.value = "sr-ct-head-001"
* status = #completed
* intent = #order

* subject = Reference(FijiPatientExample)
* encounter = Reference(FijiEncounterExample)

* authoredOn = "2026-10-05T09:15:00+12:00"

* requester = Reference(Practitioner/FijiPractitionerExample)

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #77477000
* code.coding[0].display = "Computerized axial tomography of head"

* reasonCode.coding[0].system = "http://snomed.info/sct"
* reasonCode.coding[0].code = #25064002
* reasonCode.coding[0].display = "Headache"

* priority = #routine


Instance: FijiImagingDiagnosticReportExample
InstanceOf: FijiImagingDiagnosticReport
Title: "Example CT Head Diagnostic Report"
Description: "Example final diagnostic report for a CT examination of the head."
Usage: #example

* id = "dr-ct-head-001"

* identifier[risAccession].system = "http://fhir.health.gov.fj/NamingSystem/ris-accession-number"
* identifier[risAccession].value = "RIS-2026-001847"

* basedOn = Reference(FijiImagingServiceRequestExample)

* status = #final

// HL7 diagnostic service classification
* category[hl7DiagnosticService].coding.system = $obs-diag-svc-cs
* category[hl7DiagnosticService].coding.code = #RAD
* category[hl7DiagnosticService].coding.display = "Radiology"

// DICOM modality classification
* category[dicomModality].coding.system = $DCM
* category[dicomModality].coding.code = #CT
* category[dicomModality].coding.display = "Computed Tomography"

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #77477000
* code.coding[0].display = "Computerized axial tomography of head"

* subject = Reference(FijiPatientExample)
* encounter = Reference(FijiEncounterExample)

* effectiveDateTime = "2026-10-05T10:05:00+12:00"
* issued = "2026-10-05T14:30:00+12:00"

* performer[0] = Reference(Organization/FijiOrganizationExample)
* resultsInterpreter[0] = Reference(Practitioner/FijiPractitionerExample)

// Final report presented as PDF
* presentedForm.contentType = #application/pdf
* presentedForm.data = "JVBERi0xLjQK"
* presentedForm.language = #en
* presentedForm.title = "CT Head Report"
* presentedForm.creation = "2026-10-05T14:30:00+12:00"
