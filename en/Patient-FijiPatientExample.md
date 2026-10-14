# Fiji Patient - iTaukei - Draft Fiji Core Implementation Guide v0.2.2

## Example Patient: Fiji Patient - iTaukei

Profile: [Fiji Patient](StructureDefinition-fiji-patient.md)

Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)

-------

| | |
| :--- | :--- |
| Alt. Name: | Jone Nabou (Official) |
| Contact Detail | Nadi Village, Ba Province |
| Fiji iTaukei Affiliation: | * yasana: Bua
* tikina: Dama
* korodina: NagaDoa
* yavusa: KAI NAROCAKE
* mataqali: TOVA(NATOKALAU)
* tokatoka: TK:402,403 BURETA
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "FijiPatientExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "yasana",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-yasana",
          "code" : "bua",
          "display" : "Bua"
        }]
      }
    },
    {
      "url" : "tikina",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-tikina",
          "code" : "dama",
          "display" : "Dama"
        }]
      }
    },
    {
      "url" : "korodina",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-korodina",
          "code" : "nagadoa",
          "display" : "NagaDoa"
        }]
      }
    },
    {
      "url" : "yavusa",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-yavusa",
          "code" : "kai-narocake",
          "display" : "KAI NAROCAKE"
        }]
      }
    },
    {
      "url" : "mataqali",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-mataqali",
          "code" : "tova-natokalau",
          "display" : "TOVA(NATOKALAU)"
        }]
      }
    },
    {
      "url" : "tokatoka",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-tokatoka",
          "code" : "tk-bureta",
          "display" : "TK:402,403 BURETA"
        }]
      }
    }],
    "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-iTaukei-affiliation"
  }],
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/national-health-number",
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
