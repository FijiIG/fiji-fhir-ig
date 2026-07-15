Extension: FijiClanAffiliation
Id: fiji-clan-affiliation
Title: "Fiji Clan Affiliation"
Description: """
Represents clan, tribe, lineage, or descent-based group affiliation.

This is a demographic identity attribute.
It is not a syntactic component of a name.
"""

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[1].type = #element
* ^context[1].expression = "Practitioner"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1
