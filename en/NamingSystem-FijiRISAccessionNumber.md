# Fiji RIS Accession Number - Draft Fiji Core Implementation Guide v0.2.1

## NamingSystem: Fiji RIS Accession Number 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "FijiRISAccessionNumber",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://core.fhir.health.gov.fj/NamingSystem/FijiRISAccessionNumber"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.1"
  }],
  "name" : "FijiRISAccessionNumber",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-03-31",
  "publisher" : "MHMS Fiji",
  "contact" : [{
    "name" : "MHMS Fiji",
    "telecom" : [{
      "system" : "url",
      "value" : "https://fhir.health.gov.fj"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fhir.health.gov.fj"
    }]
  }],
  "responsible" : "Ministry of Health and Medical Services, Fiji",
  "description" : "NamingSystem for RIS Accession number.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://fhir.health.gov.fj/NamingSystem/ris-accession-number",
    "preferred" : true
  },
  {
    "type" : "uri",
    "value" : "http://health.gov.fj/FHIR/mris-accession-number",
    "preferred" : false
  }]
}

```
