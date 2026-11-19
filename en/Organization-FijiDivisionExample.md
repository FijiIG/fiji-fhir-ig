# Example Fiji Divsion - Northen - Draft Fiji Core Implementation Guide v0.9.0

## Example Organization: Example Fiji Divsion - Northen

Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md)

Northern Division - Vanua Levu and Taveuni (Division - highest level health admin zone)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Division - highest level health admin zone |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiDivisionExample",
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
  "name" : "Northern Division - Vanua Levu and Taveuni"
}

```
