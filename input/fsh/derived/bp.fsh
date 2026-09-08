Profile: FijiVitalBloodPressure
Parent: $obs-bp
Id: fiji-vital-blood-pressure
Title: "Blood Pressure Observation"
Description: """
This profile defines the requirements and usage of a resource recording Blood Pressure vital observations.
It is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide.

### Mandatory elements  
The following elements must be recorded:
* status - one of the following codes (registered | preliminary | final | amended +)
* code - code defining this is a blood pressure measurement
  * code.coding.system - must be http ://loinc.org 
  * code.coding.code - must be 85354-9
* category must have at miniumu one element conforming to following:
  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
  * category.coding.code - vital-signs
* subject - a reference to a  Fiji Patient
* effective[x] -  the date/time when the Blood pressure was measured using one of the values below
  * effectiveDateTime  (recommended for use where possible)
  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change
* component for systolic reading which must have
    * component.code.coding.system = http://loinc.org
    * component.code.coding.code = **'8480-6'**
    * component.valueQuantity.value - decimal value of bp
    * component.valueQuantity.system = http://unitsofmeasure.org
    * component.valueQuantity.code = **'mm[Hg]'**

* component for diastolic reading which must have
    * component.code.coding.system = http://loinc.org
    * component.code.coding.code = **'8462-4'**
    * component.valueQuantity.value - decimal value of bp
    * component.valueQuantity.system = http://unitsofmeasure.org
    * component.valueQuantity.code = **'mm[Hg]'**

### Other elements defined
* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place	 
* interpretation - a coded concept providing interpretation for the value 
* note - any additional relevant information to be recorded 
"""
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* interpretation from FijiObsInterpretationVS (extensible)

