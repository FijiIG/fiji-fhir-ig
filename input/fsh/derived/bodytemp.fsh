Profile: FijiVitalBodyTemperature
Parent: $obs-bodytemp
Id: fiji-vital-body-temperature
Title: "Body Temperature Vitals - Fiji"
Description: """
This profile defines the requirements and usage of an Observation resource recording Body Temperature vital observations.
It is based on the FHIR Body Temperature Profile and adapted as required for the Fiji Core Implementation Guide.

### Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (registered | preliminary | final | amended +)
* code.coding.system - must be http ://loinc.org 
* code.coding.code - must be 8310-5
* category must have at miniumu one element conforming to following:
  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
  * category.coding.code - vital-signs
* subject - a reference to a  Fiji Patient
* effective[x] -  the date/time when the Body Temperature was measured using one of the values below
  * effectiveDateTime  (recommended for use where possible)
  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change
* valueQuantity - the Blood Pressure value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)
  * valueQuantity.value - One numeric value
  * valueQuantity.system - "http://unitsofmeasure.org"
  * valueQuantity.code - the UCUM unit code **'Cel'**

### Other elements defined
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place	 
* method -  a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement
* interpretation - a coded concept providing interpretation for the value 
* note - any additional relevant information to be recorded
"""
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* interpretation from FijiObsInterpretationVS (extensible)
* bodySite MS
* bodySite from FijiBodySiteVS (preferred)
* method from FijiVitalMethodVS (preferred)
