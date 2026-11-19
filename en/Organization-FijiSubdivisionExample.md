# Example Fiji Subdivsion - Draft Fiji Core Implementation Guide v0.9.0

## Example Organization: Example Fiji Subdivsion

Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md)

Savusavu sub-division (Subdivision - health admin zone part of a Division)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Subdivision - health admin zone part of a Division |
| Part Of: | [Northern Division - Vanua Levu and Taveuni (Division - highest level health admin zone)](Organization-FijiDivisionExample.md) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiSubdivisionExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-administrative-zone"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-admin-zones",
      "code" : "subdivision",
      "display" : "Subdivision"
    }],
    "text" : "Subdivision - health admin zone part of a Division"
  }],
  "name" : "Savusavu sub-division",
  "partOf" : {
    "reference" : "Organization/FijiDivisionExample"
  }
}

```
