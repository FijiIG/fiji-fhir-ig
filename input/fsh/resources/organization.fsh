// Organization providing care for patients in this IG scope
Profile: FijiOrganization
Parent: Organization
Id: fiji-organization
Title: "Fiji Healthcare Service or Organization"
Description: """
# Fiji Healthcare Service or Organization

## Overview

The `FijiOrganization` profile represents a healthcare organization, facility, service provider, or other organizational entity involved in the delivery or administration of healthcare within the scope of the Fiji Implementation Guide (IG).

This profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities.

Every `FijiOrganization` resource **must include a national organization identifier** issued or recognized within the Fiji healthcare context. This identifier is represented by the `identifier[nationalOrganizationId]` slice and uses the identifier system:

`https://fhir.health.gov.fj/identifier/organization`

The national organization identifier provides a consistent means of identifying organizations across systems and supports interoperability between healthcare applications and services.

The profile supports a range of healthcare entities, including hospitals, health centres, clinics, nursing stations, laboratories, and other healthcare service providers. Organizations may be associated with a parent organization to represent organizational hierarchies, such as a health facility belonging to a larger healthcare administration.

## Key Elements

The following table describes the key elements defined or constrained by the `FijiOrganization` profile.

| Element | Cardinality | Type | Description and Usage |
|---|---|---|---|
| `identifier` | 1..* | `Identifier` | One or more identifiers for the organization. At least one identifier must conform to the `nationalOrganizationId` slice, using the required national identifier system. Additional identifiers using other systems are permitted. |
| `identifier[nationalOrganizationId]` | 1..1 | `Identifier` | The mandatory national organization identifier. Its `system` is fixed to `https://fhir.health.gov.fj/identifier/organization`, and its `value` is required. |
| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |
| `type` | 0..* | `CodeableConcept` | Describes the kind or role of organization, such as a hospital, health centre, laboratory, or other healthcare service. The element is bound to `FijiOrganizationRoleVS` with a preferred binding. |
| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |
| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |
| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the `FijiAddress` profile, enabling the use of Fiji-specific address structures. |
| `partOf` | 0..1 | `Reference(FijiOrganization)` | Identifies the parent organization of which this organization forms a part. This supports the representation of organizational hierarchies and administrative relationships. |

## Implementation Guidance

- **National organization identifier:** Every organization record must contain exactly one identifier in the `nationalOrganizationId` slice. The identifier system is fixed to `https://fhir.health.gov.fj/identifier/organization`, and the identifier value must be populated with the organization's national identifier.
- **Additional identifiers:** Implementations may provide additional identifiers using other identifier systems. These must not replace the required national organization identifier.
- **Organization classification:** The `type` element should be used to classify the organization's role using codes from `FijiOrganizationRoleVS`. The preferred binding encourages use of the specified terminology while allowing other codes where appropriate.
- **Organization naming:** The `name` element is mandatory and must contain the organization's name.
- **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.
- **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.
- **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.

## Conformance Notes

The `FijiOrganization` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.

The `identifier` element has a minimum cardinality of `1..*`. The `nationalOrganizationId` slice has a cardinality of `1..1`, requiring exactly one identifier that uses the specified national identifier system. The slicing rules are open, so additional identifiers are permitted.

Elements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.

The `name` element is required by its `1..1` cardinality. Other elements may be absent where permitted by their cardinalities.
"""

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains nationalOrganizationId 1..1 MS

* identifier[nationalOrganizationId].system 1..1
* identifier[nationalOrganizationId].system = "https://fhir.health.gov.fj/identifier/organization" (exactly)
* identifier[nationalOrganizationId].value 1..1

* active MS
* type 0..* MS
* type from FijiOrganizationRoleVS (preferred)
* name 1..1 MS
* telecom 0..* MS
* address 0..* MS
* address only FijiAddress
* partOf 0..1 MS
* partOf only Reference(FijiOrganization)
