# Example Fiji Clinic - Draft Fiji Core Implementation Guide v0.9.0

## Example Organization: Example Fiji Clinic

Profile: [Fiji Healthcare Facility or Organization](StructureDefinition-fiji-facility.md)

Navua Community Clinic (Primary Care Clinic) (http://fhir.health.gov.fj/identifier/facility#FijiOrganizationIdentifier#CLINIC-001)

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
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-facility"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/facility",
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
