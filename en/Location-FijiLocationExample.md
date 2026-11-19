# Example location - Draft Fiji Core Implementation Guide v0.9.0

## Example Location: Example location

Profile: [Fiji Healthcare Location](StructureDefinition-fiji-location.md)

Navua Community Clinic

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Status: | Active | Mode: | Instance |
| Address: | Navua Community Clinic, Navua, Fiji(work) | | |
| Position: | -18.2146, 178.16723 | | |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "FijiLocationExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-location"]
  },
  "status" : "active",
  "name" : "Navua Community Clinic",
  "mode" : "instance",
  "address" : {
    "use" : "work",
    "type" : "physical",
    "text" : "Navua Community Clinic, Navua, Fiji",
    "line" : ["Main Road"],
    "city" : "Navua",
    "country" : "Fiji"
  },
  "position" : {
    "longitude" : 178.16723,
    "latitude" : -18.2146
  }
}

```
