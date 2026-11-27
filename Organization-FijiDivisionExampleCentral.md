# Example Fiji Divsion - Central - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Fiji Divsion - Central**

## Example Organization: Example Fiji Divsion - Central

Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md)

Central Division - capital regions and surrounding provinces (Division - highest level health admin zone)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Division - highest level health admin zone |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiDivisionExampleCentral",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-administrative-zone"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-admin-zones",
      "code" : "division",
      "display" : "Division"
    }],
    "text" : "Division - highest level health admin zone"
  }],
  "name" : "Central Division - capital regions and surrounding provinces"
}

```
