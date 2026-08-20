Profile: FijiAddress
Parent: Address
Id: fiji-address
Title: "Fiji Address"
Description: """Address profile designed for Fiji where addresses are commonly descriptive and village-based rather than street-based.
This profile supports a range of address formats, with commonly required extensions, and general usage guidance.
In all cases:
- text is a mandatory field and should be considered the primary representation of the fully address.
- line is used for free text address lines and may relate to a landmark, school, church etc. rather than a street address.
- Province, Village and Settlement are added as extensions to the base fhir Address definition to support common address formats.
- geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.
- Postal code is often not used, so is currently optional and may be removed (ie 0..0) if not required in the future
- Country is required to support international interoperability

Recommended mapping of address fields are below but should be validated and used with Fiji specific examples.

| FHIR Element        | Typical Use            | Notes                          |
| ------------------- | ------------------------------ | ------------------------------ |
| `text`              | Full narrative address         | Often the primary address form |
| `line`              | Landmark, compound, street     | Free-text                      |
| `city`              | Town                           | Mainly urban areas             |
| `district`          | Tikina / district              | Country dependent              |
| `extension:province` | Yasana / province              | Country dependent              |
| `state`             | Division                       | Country dependent              |
| `extension:village` | Village                        | Most rural addresses           |
| `extension:settlement`| Settlement                   | Rural addresses        |

"""


* ^status = #active

* text 1..1 MS
* text ^short = "Full descriptive address, should be considered the primary representation of the address"
* text ^definition = "The complete address as written or spoken locally. This is the primary form of the address and may include village, island, landmarks, or other narrative description."

* line 0..* MS
* line ^short = "Free text address lines may refer to proximity to landmarks (e.g.school, church etc.)"
* line ^definition = "Address line components used for landmarks, household names, compound identifiers, street names, or other free-text address components."

* city 0..1 MS
* city ^short = "Town or urban locality."
* city ^definition = "The city or town for the address. In rural areas this element may be absent."

* district 0..1 MS
* district ^short = "District, ward, or sub-provincial administrative area."
* district ^definition = "Administrative subdivision below the province or state level. May represent district, ward, or similar administrative unit depending on national administrative structures."

* state 0..1 MS
* state ^short = "Province, division, or first-level administrative region."
* state ^definition = "First-level administrative region such as province, division, or region depending on national geography."

* country 1..1 MS
* country ^short = "Country is required for international interoperability. Use ISO 3166 two-letter country codes."
* country ^definition = "Country expressed using ISO 3166 two-letter country codes."

* postalCode 0..1
* postalCode ^short = "Postal code is currently optional"

* extension contains
    FijiAddressProvince named province 0..1 MS and
    FijiAddressVillage named village 0..1 MS and
    FijiAddressSettlement named settlement 0..1 MS and
    $geolocation|4.0.1 named geolocation 0..1

* extension[province] ^short = "Yasana or province."
* extension[province] ^definition = "Yasana or province name."

* extension[village] ^short = "Village or rural settlement."
* extension[village] ^definition = "Village, settlement, or rural community name. This may be a primary geographic identifier for addressing."

* extension[settlement] ^short = "Rural settlement."
* extension[settlement] ^definition = "Settlement, or rural community name. This may be a primary geographic identifier for addressing."

// * extension[island] ^short = "Island where the address is located."
// * extension[island] ^definition = "Island name where the address is located. This is important in archipelago nations where logistics and travel depend on island geography."

* extension[geolocation] ^short = "Geographic coordinates of the address."
* extension[geolocation] ^definition = "Latitude and longitude coordinates representing the geographic location of the address. May represent household, facility, or village centroid."
