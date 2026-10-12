Extension: FijiITaukeiAffiliation
Id: fiji-iTaukei-affiliation
Title: "Fiji iTaukei Affiliation"
Description: """
Represents Fiji iTaukei affiliation.
This is a demographic identity attribute.
It is not a syntactic component of a name.
"""

* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[1].type = #element
* ^context[1].expression = "Practitioner"

* extension contains
    yasana 0..1 and
    tikina 0..1 and
    korodina 0..1 and
    yavusa 0..1 and
    mataqali 0..1 and
    tokatoka 0..1

* extension[yasana].value[x] only CodeableConcept
* extension[yasana].valueCodeableConcept from FijiYasanaVS (extensible)

* extension[tikina].value[x] only CodeableConcept
* extension[tikina].valueCodeableConcept from FijiTikinaVS (extensible)

* extension[korodina].value[x] only CodeableConcept
* extension[korodina].valueCodeableConcept from FijiKorodinaVS (extensible)

* extension[yavusa].value[x] only CodeableConcept
* extension[yavusa].valueCodeableConcept from FijiYavusaVS (extensible)

* extension[mataqali].value[x] only CodeableConcept
* extension[mataqali].valueCodeableConcept from FijiMataqaliVS (extensible)

* extension[tokatoka].value[x] only CodeableConcept
* extension[tokatoka].valueCodeableConcept from FijiTokatokaVS (extensible)