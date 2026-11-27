# Example Fiji Medical Area - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Fiji Medical Area**

## Example Organization: Example Fiji Medical Area

Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md)

Medical Area 1 - somewhere in Savusavu (Medical Area - health admin zone part of a Subdivision)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Medical Area - health admin zone part of a Subdivision |
| Part Of: | [Savusavu sub-division (Subdivision - health admin zone part of a Division)](Organization-FijiSubdivisionExample.md) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiMedicalAreaExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-administrative-zone"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-admin-zones",
      "code" : "medicalarea",
      "display" : "MedicalArea"
    }],
    "text" : "Medical Area - health admin zone part of a Subdivision"
  }],
  "name" : "Medical Area 1 - somewhere in Savusavu",
  "partOf" : {
    "reference" : "Organization/FijiSubdivisionExample"
  }
}

```
