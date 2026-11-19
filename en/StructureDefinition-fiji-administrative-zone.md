# Fiji Healthcare Administrative Zone - Draft Fiji Core Implementation Guide v0.9.0

## Resource Profile: Fiji Healthcare Administrative Zone 

**Usages:**

* Refer to this Profile: [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md), [Fiji Healthcare Facility or Organization](StructureDefinition-fiji-facility.md), [Fiji Patient](StructureDefinition-fiji-patient.md) and [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md)
* Examples for this Profile: [Northern Division - Vanua Levu and Taveuni](Organization-FijiDivisionExample.md), [Central Division - capital regions and surrounding provinces](Organization-FijiDivisionExampleCentral.md), [Medical Area 1 - somewhere in Savusavu](Organization-FijiMedicalAreaExample.md), [Nursing Zone 1 - in Medical Area 1 somewhere in Savusavu](Organization-FijiNursingZoneExample.md)... Show 2 more, [Savusavu sub-division](Organization-FijiSubdivisionExample.md) and [Serua/Namosi sub-division](Organization-FijiSubdivisionExampleNamosi.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fj.gov.health.fhir.core|current/StructureDefinition/StructureDefinition-fiji-administrative-zone.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-administrative-zone.csv), [Excel](../StructureDefinition-fiji-administrative-zone.xlsx), [Schematron](../StructureDefinition-fiji-administrative-zone.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-administrative-zone",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-administrative-zone",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.42.37"
  }],
  "version" : "0.9.0",
  "name" : "FijiAdministrativeZone",
  "title" : "Fiji Healthcare Administrative Zone",
  "status" : "draft",
  "date" : "2026-11-19T06:50:17+00:00",
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
  "description" : "### Fiji Healthcare Administrative Zone\n\nThe `FijiAdministrativeZone` profile represents a healthcare administrative organizational unit of the Fiji Implementation Guide (IG).\nFijiAdministrativeZone resources combine to create a hierarchy of organizational units that describe the administrative structure of the national health provision. The profile supports a range of healthcare administrative zones including Divisions, Subdivisions, Medical Areas and Nursing Zones.\n\nThis profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities.  This profile is to be distinguished from the `FijiFacility` profile which represents the organizational units are involved in the direct provision of healthcare services.\n\n### Key Elements\n\nThe following table describes the key elements defined or constrained by the `FijiOrganization` profile.\n\n| Element | Cardinality | Type | Description and Usage |\n|---|---|---|---|\n| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |\n| `type` | 1..1 | `CodeableConcept` | Describes the type of healthcare administrative zone (Divisions, Subdivisions, Medical Areas and Nursing Zones). The element is bound to [FijiAdminZonesVS](https://core.fhir.health.gov.fj/ValueSet-fiji-admin-zones.html) with a required binding. |\n| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |\n| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |\n| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the `FijiAddress` profile, enabling the use of Fiji-specific address structures. |\n| `partOf` | 0..1 | `Reference(FijiAdministrativeZone)` | Identifies the parent FijiAdministrativeZone to which this administrative zone belongs. This supports the representation of organizational hierarchies and administrative relationships. |\n\n### Implementation Guidance\n\n- **Organization classification:** The `type` element should be used to classify the administrative zone using codes from `FijiAdminZonesVS`. The required binding mandates that any resource of this type must use the specified terminology.\n- **Organization naming:** The `name` element is mandatory and must contain the organization's name.\n- **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.\n- **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.\n- **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.\n\n### Conformance Notes\n\nThe `FijiAdministrativeZone` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.\n\nElements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.\n\nThe `name` and the `type` elements are mandatory with `1..1` cardinality. Other elements may be absent where permitted by their cardinalities.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-admin-zones"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-address"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-administrative-zone"]
      }],
      "mustSupport" : true
    }]
  }
}

```
