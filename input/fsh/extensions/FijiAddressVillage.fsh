Extension: FijiAddressProvince
Id: fiji-address-province
Title: "Fiji Yasana or Province"
Description: "Yasana or Province part of FijiAddress."

* ^status = #active
* ^context.type = #element
* ^context.expression = "Address"

* value[x] only string
* valueString 1..1

* valueString ^short = "Yasana or Province name."
* valueString ^definition = "The name of the yasana or province."

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

Extension: FijiAddressSettlement
Id: fiji-address-settlement
Title: "Fiji Settlement"
Description: "Settlement part of FijiAddress."

* ^status = #active
* ^context.type = #element
* ^context.expression = "Address"

* value[x] only string
* valueString 1..1

* valueString ^short = "Settlement name."
* valueString ^definition = "The name of a settlement, or rural community."