// ---------------------------------------------------------------------------
// Cholesterol / Lipid Panel - DiagnosticReport
// ---------------------------------------------------------------------------

Instance: ExampleLipidPanelReport
InstanceOf: FijiLaboratoryDiagnosticReport
Usage: #example
Title: "Example Lipid Panel Report"
Description: "Example laboratory report containing a lipid panel."

* identifier.value = "1234abcd"
* status = #final
* category = $obs-diag-svc-cs#LAB
* code = $loinc#24331-1 "Lipid panel"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* issued = "2026-09-23T12:00:00+12:00"
* result[0] = Reference(ExampleLipidPanel)

// Final report presented as PDF
* presentedForm.contentType = #application/pdf
* presentedForm.data = "JVBERi0xLjQK"
* presentedForm.language = #en
* presentedForm.title = "Lipid Panel Report"
* presentedForm.creation = "2026-08-05T14:30:00+12:00"
