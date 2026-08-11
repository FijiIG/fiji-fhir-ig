Profile: FijiPathologyObservation
Parent: Observation
Id: fiji-pathology-observation
Title: "Fiji Pathology Observation"
Description: """
Profile for Pathology Results Observation as defined for Fiji IG.
"""
* status 1..1 MS
* category 1..* MS
* category from $obs-cat-vs (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* code 1..1 MS
* code from ObsVS (preferred)
* effective[x] 1..1 MS
* performer MS
* performer only Reference(FijiPatient or FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* value[x] MS
* dataAbsentReason MS
* dataAbsentReason from $obs-dataabsent-vs (extensible)
* interpretation MS
* interpretation from $obs-interp-vs (extensible)
* specimen MS
* referenceRange MS
* hasMember MS
* hasMember only Reference(FijiPathologyObservation)
* component MS
* component.code 1..1 MS
* component.code from ObsVS (preferred)
* component.value[x] MS
* component.dataAbsentReason MS
