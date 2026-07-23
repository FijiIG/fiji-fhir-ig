# Fiji Address - Draft Fiji Core Implementation Guide v0.1.1

## Data Type Profile: Fiji Address 

 
Address profile designed for Fiji where addresses are commonly descriptive and village-based rather than street-based. This profile supports a range of address formats, with commonly required extensions, and general usage guidance. In all cases: 
* text is a mandatory field and should be considered the primary representation of the fully address.
* line is used for free text address lines and may relate to a landmark, school, church etc. rather than a street address.
* Village and Island are added as extensions to the base fhir Address definition to support common address formats.
* geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.
* Postal code is often not used, so is currently optional and may be removed (ie 0..0) if not required in the future
* Country is required to support international interoperability
 
Recommended mapping of address fields are below but should be specifically defined and documented in nation specific examples. 

| | | |
| :--- | :--- | :--- |
| `text` | Full narrative address | Often the primary address form |
| `line` | Landmark, compound, street | Free-text |
| `city` | Town | Mainly urban areas |
| `district` | Ward / district / area council | Country dependent |
| `state` | Province / division | Country dependent |
| `extension:village` | Village | Most rural addresses |
| `extension:island` | Island | Important for logistics |

 
Note: clanAffiliation is already an extension in the FijiPatient, FijiProvider profiles so does not need to be duplicated here. 
**STATUS**: Proposed - needs further review and consensus from South Pacific stakeholders before finalization. 

**Usages:**

* Use this DataType Profile: [Fiji Healthcare Service or Organization](StructureDefinition-fiji-organization.md), [Fiji Patient](StructureDefinition-fiji-patient.md) and [Fiji Practitioner](StructureDefinition-fiji-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-address.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-address.csv), [Excel](../StructureDefinition-fiji-address.xlsx), [Schematron](../StructureDefinition-fiji-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-address",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-address",
  "version" : "0.1.1",
  "name" : "FijiAddress",
  "title" : "Fiji Address",
  "status" : "active",
  "date" : "2026-07-23T07:16:02+00:00",
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
  "description" : "Address profile designed for Fiji where addresses are commonly descriptive and village-based rather than street-based.\nThis profile supports a range of address formats, with commonly required extensions, and general usage guidance.\nIn all cases:\n- text is a mandatory field and should be considered the primary representation of the fully address.\n- line is used for free text address lines and may relate to a landmark, school, church etc. rather than a street address.\n- Village and Island are added as extensions to the base fhir Address definition to support common address formats.\n- geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.\n- Postal code is often not used, so is currently optional and may be removed (ie 0..0) if not required in the future\n- Country is required to support international interoperability\n\nRecommended mapping of address fields are below but should be specifically defined and documented in nation specific examples.\n\n| FHIR Element        | Typical Use            | Notes                          |\n| ------------------- | ------------------------------ | ------------------------------ |\n| `text`              | Full narrative address         | Often the primary address form |\n| `line`              | Landmark, compound, street     | Free-text                      |\n| `city`              | Town                           | Mainly urban areas             |\n| `district`          | Ward / district / area council | Country dependent              |\n| `state`             | Province / division            | Country dependent              |\n| `extension:village` | Village                        | Most rural addresses           |\n| `extension:island`  | Island                         | Important for logistics        |\n\nNote: clanAffiliation is already an extension in the FijiPatient, FijiProvider profiles so does not need to be duplicated here.\n\n**STATUS**: Proposed - needs further review and consensus from South Pacific stakeholders before finalization.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    },
    {
      "id" : "Address.extension:village",
      "path" : "Address.extension",
      "sliceName" : "village",
      "short" : "Village or rural settlement.",
      "definition" : "Village, settlement, or rural community name. This may be a primary geographic identifier for addressing.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-address-village"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:island",
      "path" : "Address.extension",
      "sliceName" : "island",
      "short" : "Island where the address is located.",
      "definition" : "Island name where the address is located. This is important in archipelago nations where logistics and travel depend on island geography.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-address-island"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:geolocation",
      "path" : "Address.extension",
      "sliceName" : "geolocation",
      "short" : "Geographic coordinates of the address.",
      "definition" : "Latitude and longitude coordinates representing the geographic location of the address. May represent household, facility, or village centroid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/geolocation|4.0.1"]
      }]
    },
    {
      "id" : "Address.text",
      "path" : "Address.text",
      "short" : "Full descriptive address, should be considered the primary representation of the address",
      "definition" : "The complete address as written or spoken locally. This is the primary form of the address and may include village, island, landmarks, or other narrative description.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "short" : "Free text address lines may refer to proximity to landmarks (e.g.school, church etc.)",
      "definition" : "Address line components used for landmarks, household names, compound identifiers, street names, or other free-text address components.",
      "mustSupport" : true
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "short" : "Town or urban locality.",
      "definition" : "The city or town for the address. In rural areas this element may be absent.",
      "mustSupport" : true
    },
    {
      "id" : "Address.district",
      "path" : "Address.district",
      "short" : "District, ward, or sub-provincial administrative area.",
      "definition" : "Administrative subdivision below the province or state level. May represent district, ward, or similar administrative unit depending on national administrative structures.",
      "mustSupport" : true
    },
    {
      "id" : "Address.state",
      "path" : "Address.state",
      "short" : "Province, division, or first-level administrative region.",
      "definition" : "First-level administrative region such as province, division, or region depending on national geography.",
      "mustSupport" : true
    },
    {
      "id" : "Address.postalCode",
      "path" : "Address.postalCode",
      "short" : "Postal code is currently optional"
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "short" : "Country is required for international interoperability. Use ISO 3166 two-letter country codes.",
      "definition" : "Country expressed using ISO 3166 two-letter country codes.",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
