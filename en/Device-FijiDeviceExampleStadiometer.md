# Device Example - Stadiometer - Draft Fiji Core Implementation Guide v0.9.0

## Example Device: Device Example - Stadiometer

Profile: [Fiji Healthcare Device](StructureDefinition-fiji-device.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Wall mounted Stadiometer | User Friendly name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "FijiDeviceExampleStadiometer",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-device"]
  },
  "deviceName" : [{
    "name" : "Wall mounted Stadiometer",
    "type" : "user-friendly-name"
  }]
}

```
