# Fiji Hospital Example Fiji Divisional Hospital - Draft Fiji Core Implementation Guide v0.3.0

## Example Organization: Fiji Hospital Example Fiji Divisional Hospital

Suva Divisional Hospital (http://fhir.health.gov.fj/identifier/organization#FijiOrganizationIdentifier#FJ-HOSP-SUH-001)

-------

| | |
| :--- | :--- |
| Contact Detail | * [+6793313444](tel:+6793313444)
* [info@suvahospital.gov.fj](mailto:info@suvahospital.gov.fj)
* Amy Street Suva FJ 
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiOrganizationExample",
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/organization",
    "value" : "FJ-HOSP-SUH-001"
  }],
  "name" : "Suva Divisional Hospital",
  "telecom" : [{
    "system" : "phone",
    "value" : "+6793313444",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "info@suvahospital.gov.fj",
    "use" : "work"
  }],
  "address" : [{
    "line" : ["Amy Street"],
    "city" : "Suva",
    "district" : "Central Division",
    "country" : "FJ"
  }]
}

```
