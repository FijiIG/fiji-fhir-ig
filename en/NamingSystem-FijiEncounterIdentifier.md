# Fiji Encounter Identifier - Draft Fiji Core Implementation Guide v0.9.0

## NamingSystem: Fiji Encounter Identifier 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "FijiEncounterIdentifier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://core.fhir.health.gov.fj/NamingSystem/FijiEncounterIdentifier"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.9.0"
  }],
  "name" : "FijiEncounterIdentifier",
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
  "description" : "NamingSystem for encounter identifiers for national systems in Fiji, using a simulated identifier system for demonstration purposes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://fhir.health.gov.fj/identifier/encounter",
    "preferred" : true
  }]
}

```
