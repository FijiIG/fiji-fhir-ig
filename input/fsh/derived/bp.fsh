Alias: $fhir-vital-bp = http://hl7.org/fhir/StructureDefinition/bp

Profile: FijiVitalBloodPressure
Parent: $obs-bp
Id: fiji-vital-blood-pressure
Title: "Blood Pressure Observation"
Description: """
Observation profile for blood pressure
"""
* subject only Reference(FijiPatient)