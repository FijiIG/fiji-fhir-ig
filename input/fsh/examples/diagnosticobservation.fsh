Instance: FijiDiagnosticObservationChestXrayReport
InstanceOf: FijiDiagnosticObservation
Usage: #example
Title: "Fiji Diagnostic Observation - Chest X-ray Report"
Description: """
Example of a radiology diagnostic observation representing a chest
X-ray report with multiple individual findings.
"""

* status = #final
* category = $obs-diag-svc-cs#RAD "Radiology"
* code = $SCT#168594009 "Chest X-ray abnormal"
* subject = Reference(FijiPatientExample)
* effectiveDateTime = "2026-09-28T09:30:00+12:00"
* performer = Reference(Practitioner/FijiRadiologistExample)

* hasMember[0] = Reference(FijiDiagnosticObservationPulmonaryConsolidation)
* hasMember[1] = Reference(FijiDiagnosticObservationPleuralEffusion)


Instance: FijiDiagnosticObservationPulmonaryConsolidation
InstanceOf: FijiDiagnosticObservation
Usage: #example
Title: "Fiji Diagnostic Observation - Pulmonary Consolidation"

* status = #final
* category = $obs-diag-svc-cs#RAD "Radiology"
* code = $SCT#95436008 "Pulmonary consolidation"
* subject = Reference(FijiPatientExample)
* effectiveDateTime = "2026-09-28T09:30:00+12:00"
* performer = Reference(Practitioner/FijiRadiologistExample)
* bodySite = $SCT#39607008 "Lung structure"


Instance: FijiDiagnosticObservationPleuralEffusion
InstanceOf: FijiDiagnosticObservation
Usage: #example
Title: "Fiji Diagnostic Observation - Pleural Effusion"

* status = #final
* category = $obs-diag-svc-cs#RAD "Radiology"
* code = $SCT#300999006 "Pleural effusion"
* subject = Reference(FijiPatientExample)
* effectiveDateTime = "2026-09-28T09:30:00+12:00"
* performer = Reference(Practitioner/FijiRadiologistExample)
* bodySite = $SCT#113197003 "Thoracic structure"