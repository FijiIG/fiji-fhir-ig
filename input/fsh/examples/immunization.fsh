Instance: FijiTdapImmunizationExample
InstanceOf: FijiImmunization
Usage: #example
Title: "Example Fiji Tdap Immunization"
Description: """
This is an example of a vaccination conforming to the Fiji Immunization profile.  
Select the JSON tab to view the JSON code that would represent this as a FHIR resource.
"""

* status = #completed

* vaccineCode.coding.system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding.code = #115
* vaccineCode.coding.display = "Tdap"

* patient = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)

* occurrenceDateTime = "2026-09-07"

* location = Reference(Location/example-clinic)

* lotNumber = "TDAP-FJ-2026-001"

* site.coding.system = "http://snomed.info/sct"
* site.coding.code = #368208006
* site.coding.display = "Left upper arm structure"

* route.coding.system = "http://snomed.info/sct"
* route.coding.code = #76601001
* route.coding.display = "Intramuscular injection"

* performer.actor = Reference(Practitioner/example-practitioner)