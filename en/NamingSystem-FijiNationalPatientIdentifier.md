# Fiji National Patient Identifier - Draft Fiji Core Implementation Guide v0.3.0

## NamingSystem: Fiji National Patient Identifier 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "FijiNationalPatientIdentifier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://core.fhir.health.gov.fj/NamingSystem/FijiNationalPatientIdentifier"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.3.0"
  }],
  "name" : "FijiPatientIdentifier",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-10-13",
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
  "description" : "NamingSystem for national patient identifiers in Fiji. Note: legacy data may use a different naming system: http://health.gov.fj/FHIR/national-health-number.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://fhir.health.gov.fj/identifier/national-health-number",
    "preferred" : true
  }]
}

```
