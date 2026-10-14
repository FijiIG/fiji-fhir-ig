# FijiPatientExample2 - Draft Fiji Core Implementation Guide v0.2.2

## Example Patient: FijiPatientExample2

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Susuga Tui Male, DoB: 1985-11-02 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#22333444 (use: official))

-------

| | |
| :--- | :--- |
| Other Id: | `http://health.example.org/fhir/identifier`/987654321 |
| Alt. Name: | Tevita Kalo(Official) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientExample2",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "identifier" : [{
    "system" : "http://health.example.org/fhir/identifier",
    "value" : "987654321"
  },
  {
    "use" : "official",
    "system" : "http://fhir.health.gov.fj/identifier/national-health-number",
    "value" : "22333444"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Tevita Kalo",
    "family" : "Kalo",
    "given" : ["Tevita"]
  },
  {
    "use" : "usual",
    "text" : "Susuga Tui",
    "given" : ["Tui"],
    "prefix" : ["Susuga"]
  }],
  "gender" : "male",
  "birthDate" : "1985-11-02"
}

```
