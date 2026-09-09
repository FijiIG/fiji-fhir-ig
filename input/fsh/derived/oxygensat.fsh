Profile: FijiOxygenSaturation
Parent: $obs-oxygensat
Id: fiji-vital-oxygen-saturation
Title: "Oxygen Saturation Vitals - Fiji"
Description: """
This profile defines the requirements and usage of an Observation resource recording Oxygen Saturation vital observations.
It is based on the FHIR Oxygen Saturation Profile and adapted as required for the Fiji Core Implementation Guide.

### Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (registered | preliminary | final | amended +)
* code.coding.system - must be http ://loinc.org 
* code.coding.code - must be 2708-6
* category must have at miniumu one element conforming to following:
  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
  * category.coding.code - vital-signs
* subject - a reference to a  Fiji Patient
* effective[x] -  the date/time when the Oxygen Saturation was measured using one of the values below
  * effectiveDateTime  (recommended for use where possible)
* valueQuantity - the Oxygen Saturation value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)
  * valueQuantity.value - One numeric value
  * valueQuantity.system - "http://unitsofmeasure.org"
  * valueQuantity.code - the UCUM unit code **'%'**

### Other elements defined
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Oxygen Saturation measurement took place	 
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value 
* note - any additional relevant information to be recorded
"""
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* interpretation from FijiObsInterpretationVS (extensible)
* device only Reference(FijiDevice)

// standard HL7 FHIR R4 body position extension added
* extension contains $bodyposition named bodyPosition 0..1
* extension[bodyPosition].valueCodeableConcept from $obs-bodypos-vs (extensible)