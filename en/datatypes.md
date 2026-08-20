# Data Type Profiles - Draft Fiji Core Implementation Guide v0.1.1

## Data Type Profiles

This page describes data type profiles used in this implementation guide.

### Fiji HumanName

The Fiji Human Name profile defines commonly used naming conventions.

Support for:

* Absence of family names (e.g., in some cultures where individuals may have only given names)
* Patronymic or Matronymic structures
* Multiple given names
* Customary and ceremonial naming
* Distinction between 'usual' (social) and 'official' (legal) names

#### Structure Definition

[FijiHumanName](StructureDefinition-fiji-humanname.md)

#### Fiji Name Usage

This datatype profile is intended for:

* FijiPatient.name
* FijiPractitioner.name
* FijiRelatedPerson.name (FijiRelatedPerson is yet to be profiled)

### Fiji Address

The Fiji Address profile supports a range of address formats commonly used in Fiji jurisdictions, supporting addresses that are commonly descriptive and village-based rather than street-based, and including extensions for Province, Village and Settlement as are commonly required.

This datatype profile is intended for:

* FijiPatient.address
* FijiPractitioner.address
* FijiOrganization.address
* FijiRelatedPerson.name (FijiRelatedPerson is yet to be profiled)

#### General Usage guidance.

Guidance for usage:

* text is a mandatory field and should be considered the primary representation of the fully address.
* line is used for free text address lines and may relate to a landmark, school, church etc. rather than a street address.
* city is used for a town or city
* district is used for a Tikina or District
* province is an extension added to support a Yasana or province
* state is used for a Division
* Village and Settlement are added as extensions to the base fhir Address definition to support common address formats.
* geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.
* Postal code is often not used, so is currently optional and may be removed (ie 0..0) if not required in the future
* Country should be used to support (future) international interoperability

Recommended mapping of address fields are below but should be validated and used with Fiji specific examples.

| | | |
| :--- | :--- | :--- |
| `text` | Full narrative address | Often the primary address form |
| `line` | Landmark, compound, street | Free-text |
| `city` | Town | Mainly urban areas |
| `district` | Tikina / district | Country dependent |
| `extension:province` | Yasana / province | Country dependent |
| `state` | Division | Country dependent |
| `extension:village` | Village | Most rural addresses |
| `extension:settlement` | Settlement | Rural addresses |

#### Structure and Extensions

[FijiAddress](StructureDefinition-fiji-address.md)

This includes extensions for:
 [Fiji Address Province](StructureDefinition-fiji-address-province.md)
 [Fiji Address Village](StructureDefinition-fiji-address-village.md)
 [Fiji Address Settlement](StructureDefinition-fiji-address-settlement.md)

