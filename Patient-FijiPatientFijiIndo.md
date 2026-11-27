# Fiji Patient – Indo-Fijian - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Patient – Indo-Fijian**

## Example Patient: Fiji Patient – Indo-Fijian

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Anita Prasad Female, DoB: 1985-09-02 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-771245903)

-------

| | |
| :--- | :--- |
| Alt. Name: | Anita Prasad(Official) |
| Contact Detail | Lautoka, Western Division |
| Links: | * Managing Organization: [Nursing Zone 1 - in Medical Area 1 somewhere in Savusavu (Nursing Zone - health admin zone part of a Medical Area)](Organization-FijiNursingZoneExample.md)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientFijiIndo",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/national-health-number",
    "value" : "FJ-NHI-771245903"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Anita Prasad",
    "family" : "Prasad",
    "given" : ["Anita"]
  },
  {
    "use" : "usual",
    "text" : "Anita Prasad",
    "given" : ["Anita"]
  }],
  "gender" : "female",
  "birthDate" : "1985-09-02",
  "_birthDate" : {
    "extension" : [{
      "url" : "https://core.fhir.health.gov.fj/StructureDefinition/birthdate-verified-indicator",
      "valueBoolean" : true
    }]
  },
  "address" : [{
    "text" : "Lautoka, Western Division",
    "country" : "FJ"
  }],
  "managingOrganization" : {
    "reference" : "Organization/FijiNursingZoneExample"
  }
}

```
