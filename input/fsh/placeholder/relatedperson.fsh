
Profile: FijiRelatedPerson
Parent: RelatedPerson
Id: fiji-related-person
Title: "Fiji Healthcare Related Person"
Description: """
This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  
"""
* identifier 

Instance: FijiRelatedPersonExample
InstanceOf: FijiRelatedPerson
Usage: #example
Title: "Fiji Related Person Placeholder Example"
Description: "This profile is an example of a placeholder to be extended in subsequent versions of the Fiji Core IG.  "

* active = false
* patient = Reference(Patient/FijiPatientExample)