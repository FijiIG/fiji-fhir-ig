Profile: FijiLaboratoryDiagnosticReport
Parent: DiagnosticReport
Id: fiji-laboratory-diagnostic-report
Title: "Fiji Laboratory Diagnostic Report"
Description: """
## Fiji Pathology DiagnosticReport

The **Fiji Pathology DiagnosticReport** profile defines the representation of a pathology diagnostic report in the Fiji FHIR Implementation Guide. It is based on the FHIR `DiagnosticReport` resource and is intended to provide a structured representation of pathology investigations and their results.

A pathology diagnostic report provides a summary of the investigation performed, identifies the patient and relevant specimens, records the clinicians or organisations responsible for the report, and links to the individual pathology observations that comprise the report.

The profile requires a report identifier, a pathology service category, a coded description of the investigation, the patient, the clinically relevant date/time, and at least one pathology result. Where applicable, the report can also reference the `ServiceRequest` that initiated the investigation and the `Specimen` used for testing.

### Key Elements

| Element | Cardinality | Description |
|---|---:|---|
| `identifier` | **1..*** | Business identifier(s) for the diagnostic report. At least one identifier is required to allow the report to be uniquely identified within the relevant pathology system. |
| `basedOn` | 0..* | References the `ServiceRequest` that initiated or authorised the pathology investigation. References are constrained to `FijiServiceRequest`. |
| `status` | **1..1** | Indicates the current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |
| `category` | **1..1** | Identifies the type of diagnostic service. This profile fixes the category to the laboratory value `LAB` from the diagnostic service category code system. |
| `code` | **1..1** | Coded description of the pathology investigation or diagnostic service being reported. The code is bound to `ObsVS` with a preferred binding. |
| `subject` | **1..1** | Identifies the patient who is the subject of the pathology investigation. References are constrained to `FijiPatient`. |
| `effective[x]` | **1..1** | Records the clinically relevant date/time or period for the pathology investigation, such as the time the specimen was collected or the investigation was performed. |
| `issued` | **1..1** | Date and time at which the diagnostic report was issued and made available. |
| `performer` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for performing the pathology investigation. References are constrained to `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization`. |
| `resultsInterpreter` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for interpreting or reviewing the pathology results. References are constrained to `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization`. |
| `specimen` | 0..* | Identifies the specimen(s) on which the pathology investigation was performed. References are constrained to `FijiSpecimen`. |
| `result` | **1..*** | References the individual pathology observations that make up the diagnostic report. References are constrained to `FijiPathologyObservation`. At least one result is required. |
| `presentedForm` | **1..*** | Provides the complete report in an electronically presentable format, such as a PDF document. At least one presented form is required. |
| `presentedForm.contentType` | **1..1** | Specifies the MIME type of the presented report, such as `application/pdf`. |
| `presentedForm.data` | **1..1** | Contains the report content encoded as `base64Binary`. |
| `presentedForm.language` | 0..1 | Identifies the language in which the presented report is written. The value is bound to the `$lang-vs` language ValueSet. |

### Relationships to Other Resources

The profile establishes the following important relationships:

- **ServiceRequest** — `basedOn` links the diagnostic report to the request that initiated the pathology investigation.
- **Patient** — `subject` identifies the patient for whom the report was produced.
- **Specimen** — `specimen` identifies the biological specimen(s) examined.
- **Pathology Observation** — `result` links the report to the individual pathology results and measurements.
- **Practitioner / PractitionerRole / Organization** — `performer` identifies the party responsible for performing the investigation, while `resultsInterpreter` identifies the party responsible for interpreting or reviewing the results.

### Report Presentation

The `presentedForm` element is mandatory and is intended to support exchange of the complete human-readable pathology report in addition to the structured FHIR representation. The profile requires the content type and report data to be present. The language may also be specified using the language ValueSet defined for the Fiji Implementation Guide.

The structured `result` references should be used for individual pathology findings and values, while `presentedForm` provides the complete report as a document for presentation or archival purposes.
"""

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