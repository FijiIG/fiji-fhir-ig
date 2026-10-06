// Location where care for patients is provided in this IG scope
Profile: FijiLocation
Parent: Location
Id: fiji-location
Title: "Fiji Healthcare Location"
Description: """
This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  
A Location includes both incidental locations (a place which is used for healthcare without prior designation or authorization) and dedicated, formally appointed locations.
These locations are not intended to cover parts of the body, or locations on a patient where something occurred (i.e. a patient's broken leg), but can happily cover the location where the patient broke the leg (the playground)
"""
* address 0..1 MS
* address only FijiAddress