# Example Fiji Nursing Zone - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Fiji Nursing Zone**

## Example Organization: Example Fiji Nursing Zone

Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md)

Nursing Zone 1 - in Medical Area 1 somewhere in Savusavu (Nursing Zone - health admin zone part of a Medical Area)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Nursing Zone - health admin zone part of a Medical Area |
| Part Of: | [Medical Area 1 - somewhere in Savusavu (Medical Area - health admin zone part of a Subdivision)](Organization-FijiMedicalAreaExample.md) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FijiNursingZoneExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-administrative-zone"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-admin-zones",
      "code" : "nursingzone",
      "display" : "NursingZone"
    }],
    "text" : "Nursing Zone - health admin zone part of a Medical Area"
  }],
  "name" : "Nursing Zone 1 - in Medical Area 1 somewhere in Savusavu",
  "partOf" : {
    "reference" : "Organization/FijiMedicalAreaExample"
  }
}

```
