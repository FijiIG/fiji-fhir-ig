Instance: FijiRISAccessionNumber
InstanceOf: NamingSystem
Usage: #definition
Title: "Fiji RIS Accession Number"
Description: "NamingSystem for RIS Accession number."
* name = "FijiRISAccessionNumber"
* status = #active
* kind = #identifier
* date = "2026-03-31"
* publisher = "Ministry of Health and Medical Services, Fiji"
* responsible = "Ministry of Health and Medical Services, Fiji"
// Recommended system code for RIS Accession Numbering
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.health.gov.fj/NamingSystem/ris-accession-number"
* uniqueId[0].preferred = true
// Legacy system code for RIS Accession Numbering
* uniqueId[1].type = #uri
* uniqueId[1].value = "http://health.gov.fj/FHIR/mris-accession-number"
* uniqueId[1].preferred = false
