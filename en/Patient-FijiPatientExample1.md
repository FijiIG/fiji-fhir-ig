# FijiPatientExample1 - Draft Fiji Core Implementation Guide v0.2.2

## Example Patient: FijiPatientExample1

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Taviri Male, DoB: 1990-04-12 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#11122333 (use: official))

-------

| | |
| :--- | :--- |
| Other Id: | `http://health.example.org/fhir/identifier`/123456789 |
| Alt. Name: | Michael Taviri Kalo(Official) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientExample1",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "identifier" : [{
    "system" : "http://health.example.org/fhir/identifier",
    "value" : "123456789"
  },
  {
    "use" : "official",
    "system" : "http://fhir.health.gov.fj/identifier/national-health-number",
    "value" : "11122333"
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
