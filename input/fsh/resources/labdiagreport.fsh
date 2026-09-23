Profile: FijiLaboratoryDiagnosticReport
Parent: DiagnosticReport
Id: fiji-laboratory-diagnostic-report
Title: "Fiji Laboratory Diagnostic Report"
Description: "Diagnostic report for laboratory investigations in Fiji health information systems."

* status 1..1 MS
* category 1..1 MS
* category = $diag-svc-sect-cs#LAB
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(FijiPatient)
* effective[x] 1..1 MS
* issued 1..1 MS
* result 1..* MS
* result only Reference(FijiPathologyObservation)