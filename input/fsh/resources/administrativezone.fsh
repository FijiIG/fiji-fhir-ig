// Organization providing care for patients in this IG scope
Profile: FijiAdministrativeZone
Parent: Organization
Id: fiji-administrative-zone
Title: "Fiji Healthcare Administrative Zone"
Description: """
### Fiji Healthcare Administrative Zone

The `FijiAdministrativeZone` profile represents a healthcare administrative organizational unit of the Fiji Implementation Guide (IG).
FijiAdministrativeZone resources combine to create a hierarchy of organizational units that describe the administrative structure of the national health provision. The profile supports a range of healthcare administrative zones including Divisions, Subdivisions, Medical Areas and Nursing Zones.

This profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities.  This profile is to be distinguished from the `FijiFacility` profile which represents the organizational units are involved in the direct provision of healthcare services.

### Key Elements

The following table describes the key elements defined or constrained by the `FijiOrganization` profile.

| Element | Cardinality | Type | Description and Usage |
|---|---|---|---|
| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |
| `type` | 1..1 | `CodeableConcept` | Describes the type of healthcare administrative zone (Divisions, Subdivisions, Medical Areas and Nursing Zones). The element is bound to [FijiAdminZonesVS](https://core.fhir.health.gov.fj/en/ValueSet-fiji-admin-zones.html) with a required binding. |
| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |
| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |
| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the `FijiAddress` profile, enabling the use of Fiji-specific address structures. |
| `partOf` | 0..1 | `Reference(FijiAdministrativeZone)` | Identifies the parent FijiAdministrativeZone to which this administrative zone belongs. This supports the representation of organizational hierarchies and administrative relationships. |

### Implementation Guidance

- **Organization classification:** The `type` element should be used to classify the administrative zone using codes from `FijiAdminZonesVS`. The required binding mandates that any resource of this type must use the specified terminology.
- **Organization naming:** The `name` element is mandatory and must contain the organization's name.
- **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.
- **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.
- **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.

### Conformance Notes

The `FijiAdministrativeZone` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.

Elements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.

The `name` and the `type` elements are mandatory with `1..1` cardinality. Other elements may be absent where permitted by their cardinalities.
"""

* active MS
* type 1..1 MS
* type from FijiAdminZonesVS (required)
* name 1..1 MS
* telecom 0..* MS
* address 0..* MS
* address only FijiAddress
* partOf 0..1 MS
* partOf only Reference(FijiAdministrativeZone)
