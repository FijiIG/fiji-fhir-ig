# Device Example - Pulse Oximeter - Draft Fiji Core Implementation Guide v0.9.0

## Example Device: Device Example - Pulse Oximeter

Profile: [Fiji Healthcare Device](StructureDefinition-fiji-device.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Pulse Oximeter | User Friendly name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "FijiDeviceExamplePulseOximeter",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-device"]
  },
  "deviceName" : [{
    "name" : "Pulse Oximeter",
    "type" : "user-friendly-name"
  }]
}

```
