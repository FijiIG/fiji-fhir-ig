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

The Fiji Address profile supports a range of address formats commonly used in Fiji jurisdictions.

The FijiAddress profile supports addresses that are commonly descriptive and village-based rather than street-based. This profile includes commonly required extensions, and general usage guidance. Need to further specify mappings of administrative hierarchies to the specific address fields and provides examples for the IG.

#### Structure and Extensions

[FijiAddress](StructureDefinition-fiji-address.md)

This includes optional extensions for:
 [FijiAddressVillage](StructureDefinition-fiji-address-village.md)
 [FijiAddressIsland](StructureDefinition-fiji-address-island.md)

#### Fiji Address Usage

This datatype profile is intended for:

* FijiPatient.address
* FijiPractitioner.address
* FijiOrganization.address

