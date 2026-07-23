# Fiji Patient - iTaukei with Mataqali - Draft Fiji Core Implementation Guide v0.1.1

## Example Patient: Fiji Patient - iTaukei with Mataqali

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)

-------

| | |
| :--- | :--- |
| Alt. Name: | Jone Nabou (Official) |
| Contact Detail | Nadi Village, Ba Province |
| [Fiji Clan Affiliation](StructureDefinition-fiji-clan-affiliation.md) | Mataqali Vunisei |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientFijiITaukei",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "extension" : [{
    "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-clan-affiliation",
    "valueCodeableConcept" : {
      "text" : "Mataqali Vunisei"
    }
  }],
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/nhi",
    "value" : "FJ-NHI-982345671"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Nabou",
    "given" : ["Jone"]
  },
  {
    "use" : "usual",
    "text" : "Jone Nabou",
    "given" : ["Jone"]
  }],
  "gender" : "male",
  "birthDate" : "1992-04-17",
  "address" : [{
    "text" : "Nadi Village, Ba Province",
    "country" : "FJ"
  }]
}

```
