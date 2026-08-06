# FijiPatientExample1 - Draft Fiji Core Implementation Guide v0.1.1

## Example Patient: FijiPatientExample1

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Taviri Male, DoB: 1990-04-12 ( http://health.example.org/fhir/identifier#123456789)

-------

| | |
| :--- | :--- |
| Alt. Name: | Michael Taviri Kalo(Official) |
| [Fiji Clan Affiliation](StructureDefinition-fiji-clan-affiliation.md) | Nakamal Vaturanga |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientExample1",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "extension" : [{
    "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-clan-affiliation",
    "valueCodeableConcept" : {
      "text" : "Nakamal Vaturanga"
    }
  }],
  "identifier" : [{
    "system" : "http://health.example.org/fhir/identifier",
    "value" : "123456789"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Michael Taviri Kalo",
    "family" : "Kalo",
    "given" : ["Michael", "Taviri"]
  },
  {
    "use" : "usual",
    "text" : "Taviri",
    "given" : ["Taviri"]
  }],
  "gender" : "male",
  "birthDate" : "1990-04-12"
}

```
