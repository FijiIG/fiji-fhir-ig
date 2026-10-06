Profile: FijiImagingDiagnosticReport
Parent: DiagnosticReport
Id: fiji-imaging-diagnostic-report
Title: "Fiji Imaging Diagnostic Report"
Description: """
### Fiji Imaging Diagnostic Report

The **Fiji Imaging Diagnostic Report** profile represents a diagnostic report for imaging examinations performed within Fiji health information systems. It is based on the FHIR `DiagnosticReport` resource and provides additional constraints to support interoperability between radiology information systems (RIS), imaging systems, and other health information systems.

The profile requires each report to have a **RIS Accession Number**, which provides a unique identifier for the imaging examination within the radiology workflow. The report may also reference one or more `ServiceRequest` resources through `basedOn`, allowing the report to be linked to the request or referral that initiated the examination.

The `category` element supports both **HL7 diagnostic service classification** and **DICOM modality classification**. These are represented as separate slices so that an implementation can provide either or both classifications. This allows the profile to accommodate systems that use HL7 terminology, DICOM terminology, or both.

The `code` element identifies the type of imaging diagnostic report and is bound to the Fiji radiology findings value set. The patient, encounter, report timing, performers, interpreters, and report presentation are also constrained to support consistent exchange of imaging results.

### Key Elements

| Element | Cardinality | Description |
|---|---:|---|
| `identifier` | 1..* | Identifiers for the diagnostic report. The identifier list must contain one RIS Accession Number. |
| `identifier[risAccession]` | 1..1 | The RIS Accession Number assigned to the imaging examination. |
| `identifier[risAccession].system` | 1..1 | Fixed to the Fiji RIS Accession Number NamingSystem. |
| `identifier[risAccession].value` | 1..1 | The accession number assigned by the radiology information system. |
| `basedOn` | 0..* | References the service request(s) that resulted in the imaging examination. References are restricted to `FijiServiceRequest`. |
| `status` | 1..1 | The current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |
| `category` | 1..* | Classification of the diagnostic service and/or imaging modality associated with the report. |
| `category[hl7DiagnosticService]` | 0..1 | HL7 diagnostic service classification. Uses the HL7 diagnostic service value set. |
| `category[dicomModality]` | 0..1 | DICOM modality classification. Uses the Fiji DICOM Modality value set. |
| `code` | 1..1 | Code identifying the type of imaging diagnostic report or examination. Bound to `FijiRadiologyFindingsVS` with a preferred binding. |
| `subject` | 1..1 | The patient to whom the report relates. Restricted to `FijiPatient`. |
| `encounter` | 0..1 | The healthcare encounter associated with the imaging examination. Restricted to `FijiEncounter`. |
| `effective[x]` | 1..1 | The clinically relevant time or period of the imaging examination. |
| `issued` | 1..1 | The date and time at which the diagnostic report was issued. |
| `performer` | 0..* | The organisation, practitioner, or practitioner role responsible for performing the imaging examination or producing the report. |
| `resultsInterpreter` | 0..* | The practitioner, practitioner role, or organisation responsible for interpreting the imaging results. |
| `presentedForm` | 1..* | The report as a human-readable or otherwise presentable document, such as a PDF. |
| `presentedForm.contentType` | 1..1 | MIME type of the presented report, such as `application/pdf`. |
| `presentedForm.data` | 1..1 | The report content encoded as base64 data. |
| `presentedForm.language` | 0..1 | Language of the presented report, using the FHIR language value set. |

### Imaging Modality and Diagnostic Service

The `category` element uses open slicing to allow both HL7 and DICOM classifications to be represented independently:

- **HL7 Diagnostic Service** identifies the type of diagnostic service that produced the report.
- **DICOM Modality** identifies the imaging modality used to acquire the examination, such as CT, MR, CR, or ultrasound.

Both slices are optional individually, but at least one `category` element is required. Implementations are encouraged to provide both classifications where they are available.

This approach avoids combining multiple modality codes into a single code or comma-separated value and allows multiple classifications to be represented using standard FHIR coding structures.

### Report Presentation

At least one `presentedForm` is required so that the diagnostic report can be exchanged in a human-readable or otherwise renderable form. The content type and encoded data are required. Where appropriate, implementations may provide the final report as a PDF document using `application/pdf`.

The `language` element may be populated to identify the language used in the presented report.
"""

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