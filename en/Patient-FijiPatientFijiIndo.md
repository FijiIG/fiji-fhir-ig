# Fiji Patient – Indo-Fijian - Draft Fiji Core Implementation Guide v0.1.1

## Example Patient: Fiji Patient – Indo-Fijian

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Anita Female, DoB: 1985-09-02 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-771245903)

-------

| | |
| :--- | :--- |
| Alt. Name: | Anita Prasad (Official) |
| Contact Detail | Lautoka, Western Division |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientFijiIndo",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/nhi",
    "value" : "FJ-NHI-771245903"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Prasad",
    "given" : ["Anita"]
  },
  {
    "use" : "usual",
    "given" : ["Anita"]
  }],
  "gender" : "female",
  "birthDate" : "1985-09-02",
  "address" : [{
    "text" : "Lautoka, Western Division",
    "country" : "FJ"
  }]
}

```
