# Example Fiji Hospital - Draft Fiji Core Implementation Guide v0.3.0

## Example Organization: Example Fiji Hospital

Profile: [Fiji Healthcare Service or Organization](StructureDefinition-fiji-organization.md)

Namosi District Hospital (Hospital) (https://fhir.health.gov.fj/identifier/organization#HOSP-001)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Hospital |
| Contact Detail | * [+679 345 6000](tel:+6793456000)
* Namosi District Hospital, Namosi, Fiji
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiHospitalExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
  },
  "identifier" : [{
    "system" : "https://fhir.health.gov.fj/identifier/organization",
    "value" : "HOSP-001"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "22232009",
      "display" : "Hospital"
    }],
    "text" : "Hospital"
  }],
  "name" : "Namosi District Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "+679 345 6000",
    "use" : "work"
  }],
  "address" : [{
    "text" : "Namosi District Hospital, Namosi, Fiji",
    "line" : ["Hospital Road"],
    "city" : "Namosi",
    "country" : "Fiji"
  }]
}

```
