Extension: FijiAddressVillage
Id: fiji-address-village
Title: "Village"
Description: "Village or rural settlement name used in Pacific addressing."

* ^status = #active
* ^context.type = #element
* ^context.expression = "Address"

* value[x] only string
* valueString 1..1

* valueString ^short = "Village name."
* valueString ^definition = "The name of the village, settlement, or rural community."