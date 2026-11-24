This page describes data type profiles used in this implementation guide.

### Fiji HumanName

[Fiji HumanName](https://core.fhir.health.gov.fj/en/StructureDefinition-fiji-humanname.html)

A HumanName profile designed for representing Fiji names.

This profile accommodates a range of naming practices including:
- Absence of family names (e.g., in some cultures where individuals may have only given names)
- Patronymic or Matronymic structures
- Multiple given names
- Customary and ceremonial naming
- Distinction between 'usual' (social) and 'official' (legal) names

At least one FijiHumanName instance must exist on FijiPatient and FijiPractitioner resources.
Systems SHALL NOT require both usual and official names.

This datatype profile is intended for:

- FijiPatient.name
- FijiPractitioner.name
- FijiRelatedPerson.name (FijiRelatedPerson is yet to be profiled)

### Fiji Address  

[Fiji Address](https://core.fhir.health.gov.fj/en/StructureDefinition-fiji-address.html)

Address profile designed for Fiji addresses which may include descriptive and village-based rather than 
street-based locations.   
This profile supports a range of address formats and general usage guidance.
In all cases:
- text is a mandatory field and should be considered the primary representation of the fully address.
- line is used for free text address lines and may relate to a landmark, school, church etc. in some cases combined with a village or settlement name - rather than a street address.
- Country supports international interoperability
- geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.

This is used by FijiPatient, FijiPractitioner, FijiLocation and FijiOrganization.

Recommended mapping of address fields are below but should be validated and used with Fiji specific examples.

| FHIR Element        | Typical Use            | Notes                          |
| ------------------- | ------------------------------ | ------------------------------ |
| `text`              | Full narrative address         | (required) Often the primary address form |
| `line`              | May include Landmark, compound or street     | Free-text                      |
| `city`              | Town                          | May be used for urban areas but also smaller centres            |
| `district`          | District              | District, ward, or sub-provincial administrative area              |
| `state`             | Division              | Province, division, or first-level administrative region              |
| `extension:geolocation` | Geolocation coordinates    | Lat/Long coordinates        |

