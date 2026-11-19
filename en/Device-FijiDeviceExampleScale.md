# Device Example - Scale - Draft Fiji Core Implementation Guide v0.9.0

## Example Device: Device Example - Scale

Profile: [Fiji Healthcare Device](StructureDefinition-fiji-device.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Scale | User Friendly name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "FijiDeviceExampleScale",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-device"]
  },
  "deviceName" : [{
    "name" : "Scale",
    "type" : "user-friendly-name"
  }]
}

```
