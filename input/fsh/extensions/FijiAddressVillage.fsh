Extension: FijiAddressVillage
Id: fiji-address-village
Title: "Fiji KoroDina or Village"
Description: "Village or KoroDina part of FijiAddress."

* ^status = #active
* ^context.type = #element
* ^context.expression = "Address"

* value[x] only string
* valueString 1..1

* valueString ^short = "KoroDina or Village name."
* valueString ^definition = "The name of the village, settlement, or rural community."
