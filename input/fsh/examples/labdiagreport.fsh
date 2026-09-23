// ---------------------------------------------------------------------------
// Cholesterol / Lipid Panel - DiagnosticReport
// ---------------------------------------------------------------------------

Instance: ExampleLipidPanelReport
InstanceOf: DiagnosticReport
Usage: #example
Title: "Example Lipid Panel Report"
Description: "Example laboratory report containing a lipid panel."

* status = #final
* category = $diag-svc-sect-cs#LAB
* code = $loinc#24331-1 "Lipid panel"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* issued = "2026-09-23T12:00:00+12:00"
* result[0] = Reference(ExampleLipidPanel)

