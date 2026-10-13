Instance: FijiNationalPatientIdentifier
InstanceOf: NamingSystem
Usage: #definition
Title: "Fiji National Patient Identifier"
Description: "NamingSystem for national patient identifiers in Fiji. Note: legacy data may use a different naming system: http://health.gov.fj/FHIR/national-health-number."
* name = "FijiPatientIdentifier"
* status = #active
* kind = #identifier
* date = "2026-10-13"
* publisher = "Ministry of Health and Medical Services, Fiji"
* responsible = "Ministry of Health and Medical Services, Fiji"

* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.health.gov.fj/identifier/national-health-number"
* uniqueId[0].preferred = true