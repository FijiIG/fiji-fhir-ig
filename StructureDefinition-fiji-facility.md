# Fiji Healthcare Facility or Organization - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Healthcare Facility or Organization**

## Resource Profile: Fiji Healthcare Facility or Organization 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/StructureDefinition/fiji-facility | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:FijiFacility |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.42.38 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 

### Fiji Healthcare Facility or Organization

 
The `FijiFacililty` profile represents a healthcare organization, facility, service provider, or other organizational entity involved in the delivery of healthcare within the scope of the Fiji Implementation Guide (IG). It is to be distinguished from the `FijiAdministrativeZone` profile which represents the organizational units are involved in healthcare administration but do not directly provide healthcare services. 
This profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities. 
Every `FijiFacility` resource **must include a national facility identifier** issued or recognized within the Fiji healthcare context. This identifier is represented by the `identifier[nationalOrganizationId]` slice and uses the identifier system: 
`https://fhir.health.gov.fj/identifier/facility` 
The national facility identifier provides a consistent means of identifying organizations across systems and supports interoperability between healthcare applications and services. 
The profile supports a range of healthcare entities, including hospitals, health centres, clinics, nursing stations, laboratories, and other healthcare service providers. Organizations may be associated with a parent organization to represent organizational hierarchies, such as a health facility belonging to a larger healthcare administration. 

### Key Elements

 
The following table describes the key elements defined or constrained by the `FijiOrganization` profile. 

| | | | |
| :--- | :--- | :--- | :--- |
| `identifier` | 1..* | `Identifier` | One or more identifiers for the facility. At least one identifier must conform to the`nationalOrganizationId`slice, using the required national identifier system. Additional identifiers using other systems are permitted. |
| `identifier[nationalOrganizationId]` | 1..1 | `Identifier` | The mandatory national facility identifier. Its`system`is fixed to`https://fhir.health.gov.fj/identifier/facility`, and its`value`is required. |
| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |
| `type` | 0..* | `CodeableConcept` | Describes the kind or role of facility, such as a hospital, health centre, laboratory, or other healthcare service. The element is bound to`FijiOrganizationRoleVS`with a preferred binding. |
| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |
| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |
| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the`FijiAddress`profile, enabling the use of Fiji-specific address structures. |
| `partOf` | 0..1 | `Reference(FijiAdministrativeZone)` | Identifies the parent FijiAdministrativeZone to which this facility belongs. This supports the representation of organizational hierarchies and administrative relationships. |

 

### Implementation Guidance

 
* **National organization identifier:** Every organization record must contain exactly one identifier in the `nationalOrganizationId` slice. The identifier system is fixed to `https://fhir.health.gov.fj/identifier/facility`, and the identifier value must be populated with the facility's national identifier.
* **Additional identifiers:** Implementations may provide additional identifiers using other identifier systems. These must not replace the required national organization identifier.
* **Organization classification:** The `type` element should be used to classify the facility's role using codes from `FijiOrganizationRoleVS`. The preferred binding encourages use of the specified terminology while allowing other codes where appropriate.
* **Organization naming:** The `name` element is mandatory and must contain the organization's name.
* **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.
* **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.
* **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.
 

### Conformance Notes

 
The `FijiFacililty` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG. 
The `identifier` element has a minimum cardinality of `1..*`. The `nationalOrganizationId` slice has a cardinality of `1..1`, requiring exactly one identifier that uses the specified national identifier system. The slicing rules are open, so additional identifiers are permitted. 
Elements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance. 
The `name` element is required by its `1..1` cardinality. Other elements may be absent where permitted by their cardinalities. 

**Usages:**

* Refer to this Profile: [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md), [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md), [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md), [Fiji Immunization](StructureDefinition-fiji-immunization.md)... Show 6 more, [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md), [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md), [Fiji Medication Request](StructureDefinition-fiji-medication-request.md), [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md), [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md) and [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md)
* Examples for this Profile: [Navua Community Clinic](Organization-FijiClinicExample.md) and [Namosi District Hospital](Organization-FijiHospitalExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fj.gov.health.fhir.core|current/StructureDefinition/StructureDefinition-fiji-facility.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fiji-facility.csv), [Excel](StructureDefinition-fiji-facility.xlsx), [Schematron](StructureDefinition-fiji-facility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-facility",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-facility",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.42.38"
  }],
  "version" : "0.9.1",
  "name" : "FijiFacility",
  "title" : "Fiji Healthcare Facility or Organization",
  "status" : "draft",
  "date" : "2026-11-27T08:01:49+00:00",
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
  "description" : "### Fiji Healthcare Facility or Organization\n\nThe `FijiFacililty` profile represents a healthcare organization, facility, service provider, or other organizational entity involved in the delivery of healthcare within the scope of the Fiji Implementation Guide (IG).\nIt is to be distinguished from the `FijiAdministrativeZone` profile which represents the organizational units are involved in healthcare administration but do not directly provide healthcare services.\n\nThis profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities.\n\nEvery `FijiFacility` resource **must include a national facility identifier** issued or recognized within the Fiji healthcare context. This identifier is represented by the `identifier[nationalOrganizationId]` slice and uses the identifier system:\n\n`https://fhir.health.gov.fj/identifier/facility`\n\nThe national facility identifier provides a consistent means of identifying organizations across systems and supports interoperability between healthcare applications and services.\n\nThe profile supports a range of healthcare entities, including hospitals, health centres, clinics, nursing stations, laboratories, and other healthcare service providers. Organizations may be associated with a parent organization to represent organizational hierarchies, such as a health facility belonging to a larger healthcare administration.\n\n### Key Elements\n\nThe following table describes the key elements defined or constrained by the `FijiOrganization` profile.\n\n| Element | Cardinality | Type | Description and Usage |\n|---|---|---|---|\n| `identifier` | 1..* | `Identifier` | One or more identifiers for the facility. At least one identifier must conform to the `nationalOrganizationId` slice, using the required national identifier system. Additional identifiers using other systems are permitted. |\n| `identifier[nationalOrganizationId]` | 1..1 | `Identifier` | The mandatory national facility identifier. Its `system` is fixed to `https://fhir.health.gov.fj/identifier/facility`, and its `value` is required. |\n| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |\n| `type` | 0..* | `CodeableConcept` | Describes the kind or role of facility, such as a hospital, health centre, laboratory, or other healthcare service. The element is bound to `FijiOrganizationRoleVS` with a preferred binding. |\n| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |\n| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |\n| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the `FijiAddress` profile, enabling the use of Fiji-specific address structures. |\n| `partOf` | 0..1 | `Reference(FijiAdministrativeZone)` | Identifies the parent FijiAdministrativeZone to which this facility belongs. This supports the representation of organizational hierarchies and administrative relationships. |\n\n### Implementation Guidance\n\n- **National organization identifier:** Every organization record must contain exactly one identifier in the `nationalOrganizationId` slice. The identifier system is fixed to `https://fhir.health.gov.fj/identifier/facility`, and the identifier value must be populated with the facility's national identifier.\n- **Additional identifiers:** Implementations may provide additional identifiers using other identifier systems. These must not replace the required national organization identifier.\n- **Organization classification:** The `type` element should be used to classify the facility's role using codes from `FijiOrganizationRoleVS`. The preferred binding encourages use of the specified terminology while allowing other codes where appropriate.\n- **Organization naming:** The `name` element is mandatory and must contain the organization's name.\n- **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.\n- **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.\n- **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.\n\n### Conformance Notes\n\nThe `FijiFacililty` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.\n\nThe `identifier` element has a minimum cardinality of `1..*`. The `nationalOrganizationId` slice has a cardinality of `1..1`, requiring exactly one identifier that uses the specified national identifier system. The slicing rules are open, so additional identifiers are permitted.\n\nElements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.\n\nThe `name` element is required by its `1..1` cardinality. Other elements may be absent where permitted by their cardinalities.",
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
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:nationalOrganizationId",
      "path" : "Organization.identifier",
      "sliceName" : "nationalOrganizationId",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:nationalOrganizationId.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://fhir.health.gov.fj/identifier/facility"
    },
    {
      "id" : "Organization.identifier:nationalOrganizationId.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-organization-role-vs"
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
