# Fiji Practitioner Medical Registration Number - Draft Fiji Core Implementation Guide v0.2.2

## NamingSystem: Fiji Practitioner Medical Registration Number 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "FijiPractitionerMedicalRegistrationNumber",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://core.fhir.health.gov.fj/NamingSystem/FijiPractitionerMedicalRegistrationNumber"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.2"
  }],
  "name" : "FijiPractitionerMedicalRegistrationNumber",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-10-14",
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
  "description" : "NamingSystem for practitioner medical registration number registration identifiers in Fiji",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://fhir.health.gov.fj/identifier/practitioner-medical-registration",
    "preferred" : true
  }]
}

```
