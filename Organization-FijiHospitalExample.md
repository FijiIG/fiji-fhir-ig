# Example Fiji Hospital - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Fiji Hospital**

## Example Organization: Example Fiji Hospital

Profile: [Fiji Healthcare Facility or Organization](StructureDefinition-fiji-facility.md)

Namosi District Hospital (Hospital) (http://fhir.health.gov.fj/identifier/facility#FijiOrganizationIdentifier#HOSP-001)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Hospital |
| Part Of: | [Serua/Namosi sub-division (Subdivision - health admin zone part of a Division)](Organization-FijiSubdivisionExampleNamosi.md) |
| Contact Detail | * [+679 345 6000](tel:+6793456000)
* Namosi District Hospital, Namosi, Fiji
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiHospitalExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-facility"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/facility",
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
  }],
  "partOf" : {
    "reference" : "Organization/FijiSubdivisionExampleNamosi"
  }
}

```
