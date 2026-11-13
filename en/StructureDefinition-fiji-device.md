# Fiji Healthcare Device - Draft Fiji Core Implementation Guide v0.9.0

## Resource Profile: Fiji Healthcare Device 

**Usages:**

* Refer to this Profile: [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md), [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md) and [Weight Vitals - Fiji](StructureDefinition-fiji-vital-weight.md)
* Examples for this Profile: [Device/FijiDeviceExamplePulseOximeter](Device-FijiDeviceExamplePulseOximeter.md), [Device/FijiDeviceExampleScale](Device-FijiDeviceExampleScale.md) and [Device/FijiDeviceExampleStadiometer](Device-FijiDeviceExampleStadiometer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fj.gov.health.fhir.core|current/StructureDefinition/StructureDefinition-fiji-device.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-device.csv), [Excel](../StructureDefinition-fiji-device.xlsx), [Schematron](../StructureDefinition-fiji-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-device",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-device",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.42.5"
  }],
  "version" : "0.9.0",
  "name" : "FijiDevice",
  "title" : "Fiji Healthcare Device",
  "status" : "draft",
  "date" : "2026-11-13T04:51:51+00:00",
  "publisher" : "MHMS Fiji",
  "contact" : [{
    "name" : "MHMS Fiji",
    "telecom" : [{
      "system" : "url",
      "value" : "https://fhir.health.gov.fj"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fhir.health.gov.fj"
    }]
  }],
  "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  \nA device is a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. \nThe device may be a medical or non-medical device.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "mustSupport" : true
    }]
  }
}

```
