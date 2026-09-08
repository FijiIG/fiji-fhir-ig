// ValueSet for Heart Rate codes
ValueSet: HeartRateVS
Id: heart-rate-loinc
Title: "Heart Rate LOINC Codes"
Description: "LOINC codes for heart rate measurements, spot or average."
* include $loinc#8867-4 "Heart rate"
* include $loinc#103205-1 "Mean heart rate"

Profile: FijiVitalHeartRate
Parent: $obs-heartrate
Id: fiji-vital-heart-rate
Title: "Heart Rate Vitals - Fiji"
Description: """
This profile defines the requirements and usage of an Observation resource recording Heart Rate vital observations.
It is based on the FHIR Heart Rate Profile and adapted as required for the Fiji Core Implementation Guide.

### Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (registered | preliminary | final | amended +)
* code.coding.system - must be http ://loinc.org 
* code.coding.code - must be 8867-4
* category must have at miniumu one element conforming to following:
  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
  * category.coding.code - vital-signs
* subject - a reference to a  Fiji Patient
* effective[x] -  the date/time when the Heart Rate was measured using one of the values below
  * effectiveDateTime  (recommended for use where possible)
* valueQuantity - the Heart Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)
  * valueQuantity.value - One numeric value
  * valueQuantity.system - "http://unitsofmeasure.org"
  * valueQuantity.code - the UCUM unit code **'/min'**

### Other elements defined
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Heart Rate measurement took place	 
* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* interpretation - a coded concept providing interpretation for the value 
* note - any additional relevant information to be recorded
"""

* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* interpretation from FijiObsInterpretationVS (extensible)
* bodySite from FijiBodySiteVS (preferred)
* method from FijiVitalMethodVS (preferred)
