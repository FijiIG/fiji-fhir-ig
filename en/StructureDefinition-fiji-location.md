# Fiji Healthcare Location - Draft Fiji Core Implementation Guide v0.2.0

## Resource Profile: Fiji Healthcare Location 

 
This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.
 A Location includes both incidental locations (a place which is used for healthcare without prior designation or authorization) and dedicated, formally appointed locations. These locations are not intended to cover parts of the body, or locations on a patient where something occurred (i.e. a patient's broken leg), but can happily cover the location where the patient broke the leg (the playground) 

**Usages:**

* Refer to this Profile: [Fiji Immunization](StructureDefinition-fiji-immunization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-location.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-location.csv), [Excel](../StructureDefinition-fiji-location.xlsx), [Schematron](../StructureDefinition-fiji-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-location",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-location",
  "version" : "0.2.0",
  "name" : "FijiLocation",
  "title" : "Fiji Healthcare Location",
  "status" : "draft",
  "date" : "2026-09-11T02:30:38+00:00",
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
  "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  \nA Location includes both incidental locations (a place which is used for healthcare without prior designation or authorization) and dedicated, formally appointed locations.\nThese locations are not intended to cover parts of the body, or locations on a patient where something occurred (i.e. a patient's broken leg), but can happily cover the location where the patient broke the leg (the playground)",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
