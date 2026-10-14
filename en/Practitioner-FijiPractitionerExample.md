# Fiji Practitioner Example - Draft Fiji Core Implementation Guide v0.2.2

## Example Practitioner: Fiji Practitioner Example

Profile: [Fiji Practitioner](StructureDefinition-fiji-practitioner.md)

Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345)

-------

| | |
| :--- | :--- |
| Gender: | Male |
| Alt. Name: | Jone Viliame Nabose (Official) |
| Contact Detail | * [+679 331 0000](tel:+6793310000)
* [jone.nabose@example.org](mailto:jone.nabose@example.org)
* Hospital Road, Suva(work)
 |
| Qualification: | Bachelor of Medicine and Bachelor of Surgery |
| Languages: | * English
* Fijian
 |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "FijiPractitionerExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner"]
  },
  "identifier" : [{
    "system" : "https://fhir.health.gov.fj/identifier/practitioner-medical-registration",
    "value" : "MED-12345"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Nabose",
    "given" : ["Jone", "Viliame"]
  },
  {
    "use" : "usual",
    "family" : "Nabose",
    "given" : ["Jone"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+679 331 0000",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "jone.nabose@example.org",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "text" : "Hospital Road, Suva",
    "line" : ["Hospital Road"],
    "city" : "Suva",
    "country" : "Fiji"
  }],
  "gender" : "male",
  "qualification" : [{
    "code" : {
      "text" : "Bachelor of Medicine and Bachelor of Surgery"
    }
  }],
  "communication" : [{
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "en"
    }],
    "text" : "English"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "fj"
    }],
    "text" : "Fijian"
  }]
}

```
