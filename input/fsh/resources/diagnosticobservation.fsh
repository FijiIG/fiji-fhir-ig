Profile: FijiDiagnosticObservation
Parent: Observation
Id: fiji-diagnostic-observation
Title: "Fiji Diagnostic Observation"
Description: """
Profile for Diagnostic Results Observation as defined for Fiji IG.
"""
* status 1..1 MS
* category 1..* MS
* category from $obs-diag-svc-vs (preferred)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(FijiPatient)
* effective[x] 1..1 MS
* performer MS
* performer only Reference(FijiPatient or FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* value[x] MS
* dataAbsentReason MS
* dataAbsentReason from $obs-dataabsent-vs
* bodySite MS
* bodySite from FijiBodySiteVS (extensible)
* hasMember MS
* hasMember only Reference(FijiDiagnosticObservation)
* component MS
* component.code 1..1 MS
* component.value[x] MS
* component.dataAbsentReason MS
