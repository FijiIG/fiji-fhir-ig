Profile: FijiHeight
Parent: $obs-bodyheight
Id: fiji-vital-height
Title: "Height Vitals - Fiji"
Description: """
This profile defines the requirements and usage of an Observation resource recording Body Height vital observations.
It is based on the FHIR Body Height Profile and adapted as required for the Fiji Core Implementation Guide.

### Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (registered | preliminary | final | amended +)
* code.coding.system - must be http ://loinc.org 
* code.coding.code - must be 8302-2
* category must have at miniumu one element conforming to following:
  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
  * category.coding.code - vital-signs
* subject - a reference to a  Fiji Patient
* effective[x] -  the date/time when the Body Height was measured using one of the values below
  * effectiveDateTime  (recommended for use where possible)
  * effectivePeriod - this is a time period with specific start/end over which the Body Height did not change
* valueQuantity - the Body Height value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)
  * valueQuantity.value - One numeric value
  * valueQuantity.system - "http://unitsofmeasure.org"
  * valueQuantity.code - the UCUM unit code **'cm'**

### Other elements defined
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Body Height measurement took place	 
* interpretation - a coded concept providing interpretation for the value 
* device - reference to the specific device used to measure
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* note - any additional relevant information to be recorded
"""
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* interpretation from FijiObsInterpretationVS (extensible)
* device only Reference(FijiDevice)

// standard HL7 FHIR R4 body position extension added
* extension contains $bodyposition named bodyPosition 0..1
* extension[bodyPosition].valueCodeableConcept from $obs-bodypos-vs (extensible)