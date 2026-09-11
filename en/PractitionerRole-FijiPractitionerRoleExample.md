# Fiji Practitioner Role District Hospital GP - Draft Fiji Core Implementation Guide v0.2.0

## Example PractitionerRole: Fiji Practitioner Role District Hospital GP

Profile: [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md)

**period**: 2023-01-01 --> (ongoing)

**practitioner**: `FijiPractitionerExample`

**organization**: [Organization Suva Divisional Hospital](Organization-FijiOrganizationExample.md)

**code**: General Practitioner

**specialty**: Family Medicine

**telecom**: [+685123456](tel:+685123456)



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
    "reference" : "FijiPractitionerExample"
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
