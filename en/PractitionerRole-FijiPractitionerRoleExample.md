# Fiji Practitioner Role District Hospital GP - Draft Fiji Core Implementation Guide v0.3.0

## Example PractitionerRole: Fiji Practitioner Role District Hospital GP

Profile: [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md)

Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345): General Practitioner at Suva Divisional Hospital (http://fhir.health.gov.fj/identifier/organization#FijiOrganizationIdentifier#FJ-HOSP-SUH-001)

-------

| | |
| :--- | :--- |
| Valid Period: | 2023-01-01 --> (ongoing) |
| Practitioner: | [Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345)](Practitioner-FijiPractitionerExample.md) |
| Organization: | [Suva Divisional Hospital (http://fhir.health.gov.fj/identifier/organization#FijiOrganizationIdentifier#FJ-HOSP-SUH-001)](Organization-FijiOrganizationExample.md) |
| Role: | General Practitioner |
| Specialty: | Family Medicine |
| Contact Detail | [+685123456](tel:+685123456) |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "FijiPractitionerRoleExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role"]
  },
  "period" : {
    "start" : "2023-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/FijiPractitionerExample"
  },
  "organization" : {
    "reference" : "Organization/FijiOrganizationExample"
  },
  "code" : [{
    "text" : "General Practitioner"
  }],
  "specialty" : [{
    "text" : "Family Medicine"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+685123456"
  }]
}

```
