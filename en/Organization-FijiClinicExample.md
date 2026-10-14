# Example Fiji Clinic - Draft Fiji Core Implementation Guide v0.2.2

## Example Organization: Example Fiji Clinic

Profile: [Fiji Healthcare Service or Organization](StructureDefinition-fiji-organization.md)

Navua Community Clinic (Primary Care Clinic) (https://fhir.health.gov.fj/identifier/organization#CLINIC-001)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Primary Care Clinic |
| Contact Detail | * [+679 346 7000](tel:+6793467000)
* Navua Community Clinic, Navua, Fiji
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiClinicExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
  },
  "identifier" : [{
    "system" : "https://fhir.health.gov.fj/identifier/organization",
    "value" : "CLINIC-001"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394761003",
      "display" : "General practitioner practice site"
    }],
    "text" : "Primary Care Clinic"
  }],
  "name" : "Navua Community Clinic",
  "telecom" : [{
    "system" : "phone",
    "value" : "+679 346 7000",
    "use" : "work"
  }],
  "address" : [{
    "text" : "Navua Community Clinic, Navua, Fiji",
    "line" : ["Main Road"],
    "city" : "Navua",
    "country" : "Fiji"
  }]
}

```
