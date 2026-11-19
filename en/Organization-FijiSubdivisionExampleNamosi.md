# Example Fiji Subdivsion Serua Namosi - Draft Fiji Core Implementation Guide v0.9.0

## Example Organization: Example Fiji Subdivsion Serua Namosi

Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md)

Serua/Namosi sub-division (Subdivision - health admin zone part of a Division)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Subdivision - health admin zone part of a Division |
| Part Of: | [Central Division - capital regions and surrounding provinces (Division - highest level health admin zone)](Organization-FijiDivisionExampleCentral.md) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiSubdivisionExampleNamosi",
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
  "name" : "Serua/Namosi sub-division",
  "partOf" : {
    "reference" : "Organization/FijiDivisionExampleCentral"
  }
}

```
