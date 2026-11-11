Instance: FijiLocationExample
InstanceOf: FijiLocation
Usage: #example
Title: "Example location"
Description: "Example of a Fiji location healthcare setting"
* status = #active
* name = "Navua Community Clinic"
* mode = #instance

// Physical address following Fijian conventions (no postalCode)
* address.use = #work
* address.type = #physical
* address.text = "Navua Community Clinic, Navua, Fiji"
* address.line[0] = "Main Road"
* address.city = "Navua"
* address.country = "Fiji"

* position.longitude = 178.16723
* position.latitude = -18.2146
