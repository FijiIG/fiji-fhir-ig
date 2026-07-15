Extension: FijiAddressIsland
Id: fiji-address-island
Title: "Island"
Description: "Island where the address is located."

* ^status = #active
* ^context.type = #element
* ^context.expression = "Address"

* value[x] only string
* valueString 1..1

* valueString ^short = "Island name."
* valueString ^definition = "The island on which the address is located. Important for logistics and transport in archipelago countries."