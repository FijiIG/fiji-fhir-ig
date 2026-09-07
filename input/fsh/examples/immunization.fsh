Instance: FijiTdapImmunizationExample
InstanceOf: FijiImmunization
Usage: #example
Title: "Tdap Immunization"
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


Instance: FijiImmunizationReactionExample
InstanceOf: FijiImmunization
Usage: #example
Title: "Tdap Immunization with Reaction"

* status = #completed

* vaccineCode.coding.system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding.code = #115
* vaccineCode.coding.display = "Tdap"

* patient = Reference(FijiPatientExample)
* encounter = Reference(FijiEncounterExample)
* occurrenceDateTime = "2026-09-07"

* location = Reference(FijiClinicExample)

* lotNumber = "TDAP-FJ-2026-001"

* site.coding.system = "http://snomed.info/sct"
* site.coding.code = #368208006
* site.coding.display = "Left upper arm structure"

* route.coding.system = "http://snomed.info/sct"
* route.coding.code = #76601001
* route.coding.display = "Intramuscular injection"

* performer.actor = Reference(FijiPractitionerExample)

* reaction.date = "2026-09-08"
* reaction.detail = Reference(FijiTdapReactionObservation)



Instance: FijiTdapReactionObservation
InstanceOf: Observation
Usage: #example
Title: "Tdap Injection Site Reaction"

* status = #final

* subject = Reference(FijiPatientExample)

* effectiveDateTime = "2026-09-08"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #271807003
* code.coding.display = "Skin lesion"

* valueCodeableConcept.coding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding.code = #385615009
* valueCodeableConcept.coding.display = "Injection site reaction"