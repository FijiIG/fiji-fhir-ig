# Fiji Radiologist Example - Draft Fiji Core Implementation Guide v0.9.0

## Example Practitioner: Fiji Radiologist Example

Profile: [Fiji Practitioner](StructureDefinition-fiji-practitioner.md)

Michael James Smith(official) (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#RAD-12345)

-------

| | |
| :--- | :--- |
| Gender: | Male |
| Contact Detail | * [+679 331 1234](tel:+6793311234)
* [mj.smith@example.org](mailto:mj.smith@example.org)
* Raidiology Road, Suva(work)
 |
| Language: | English |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "FijiRadiologistExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/practitioner-medical-registration",
    "value" : "RAD-12345"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Michael James Smith",
    "family" : "Smith",
    "given" : ["Michael", "James"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+679 331 1234",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "mj.smith@example.org",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "text" : "Raidiology Road, Suva",
    "line" : ["Radiology Road"],
    "city" : "Suva",
    "country" : "Fiji"
  }],
  "gender" : "male",
  "communication" : [{
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "en"
    }],
    "text" : "English"
  }]
}

```
