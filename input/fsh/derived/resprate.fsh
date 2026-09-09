Profile: FijiRespiratoryRate
Parent: $obs-resprate
Id: fiji-vital-respiratory-rate
Title: "Respiratory Rate Vitals - Fiji"
Description: """
This profile defines the requirements and usage of an Observation resource recording Respiratory Rate vital observations.
It is based on the FHIR Respiratory Rate Profile and adapted as required for the Fiji Core Implementation Guide.

### Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (registered | preliminary | final | amended +)
* code.coding.system - must be http ://loinc.org 
* code.coding.code - must be 9279-1
* category must have at miniumu one element conforming to following:
  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
  * category.coding.code - vital-signs
* subject - a reference to a  Fiji Patient
* effective[x] -  the date/time when the Respiratory Rate was measured using one of the values below
  * effectiveDateTime  (recommended for use where possible)
* valueQuantity - the Respiratory Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)
  * valueQuantity.value - One numeric value
  * valueQuantity.system - "http://unitsofmeasure.org"
  * valueQuantity.code - the UCUM unit code **'/min'**

### Other elements defined
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Respiratory Rate measurement took place	 
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value 
* note - any additional relevant information to be recorded
"""
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* interpretation from FijiObsInterpretationVS (extensible)
* method from FijiVitalMethodVS (preferred)

// standard HL7 FHIR R4 body position extension added
* extension contains $bodyposition named bodyPosition 0..1
* extension[bodyPosition] ^short = "The body position at the time of the observation"
* extension[bodyPosition] ^definition = "The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code."
* extension[bodyPosition].valueCodeableConcept from $obs-bodypos-vs (extensible)

