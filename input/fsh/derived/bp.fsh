Profile: FijiVitalBloodPressure
Parent: $obs-bp
Id: fiji-vital-blood-pressure
Title: "Blood Pressure Observation"
Description: """
This profile sets minimum expectations for an Observation resource to record blood pressure observations.
It is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide.

### Summary of  Requirements

1.  One code in `Observation.code` which must have
    -   a fixed `Observation.code.coding.system`=**'http ://loinc.org'**
    -   a fixed  `Observation.code.coding.code`= **85354-9'**
    -   Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC
        Codes, SNOMED CT concepts, system specific codes. All codes
        SHALL have an system value
2.  One  `Observation.component.code`  which must have
    -   a fixed `Observation.component.code.coding.system`=**'http://loinc.org'**
    -   fixed  `Observation.component.code.coding.code`= **'8480-6'**
    -   Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC
        Codes, SNOMED CT concepts, system specific codes. All codes
        SHALL have an system value
3.  One  `Observation.component.code` which must have 
    -   a fixed `Observation.component.code.coding.system`=**'http://loinc.org'**
    -   fixed  `Observation.component.code.coding.code`= **'8462-4'**
    -   Other additional Codings are allowed in `Observation.code`- e.g. more specific LOINC
        Codes, SNOMED CT concepts, system specific codes. All codes
        SHALL have an system value
4. Either one Observation.valueQuantity or, if there is no value, one code in Observation.DataAbsentReason
   - Each Observation.valueQuantity must have:
     - One numeric value in Observation.valueQuantity.value
     - a fixed Observation.valueQuantity.system=\"http://unitsofmeasure.org\"
     - a UCUM unit code in Observation.valueQuantity.code = **'mm[Hg]'**
	 
"""
* subject only Reference(FijiPatient)