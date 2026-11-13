# FijiPatientChildExample - Draft Fiji Core Implementation Guide v0.9.0

## Example Patient: FijiPatientChildExample

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Adi Kalo(official) Female, DoB: 2024-11-02 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#44555666 (use: official))

-------

| | |
| :--- | :--- |
| Other Id: | `http://health.example.org/fhir/identifier`/987654231 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientChildExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "identifier" : [{
    "system" : "http://health.example.org/fhir/identifier",
    "value" : "987654231"
  },
  {
    "use" : "official",
    "system" : "http://fhir.health.gov.fj/identifier/national-health-number",
    "value" : "44555666"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Adi Kalo",
    "family" : "Kalo",
    "given" : ["Adi"]
  }],
  "gender" : "female",
  "birthDate" : "2024-11-02"
}

```
