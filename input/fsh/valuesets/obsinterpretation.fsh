CodeSystem: FijiObsInterpretationCS
Id: fiji-obs-interpretation-cs
Title: "Observation interpretation local codes in Fiji"
Description: "Observation interpretation local codes in Fiji"

* #interp1 "ExampleInterpretation1" "Example Interpretation 1 (example only need to populate this code system)"

ValueSet: FijiObsInterpretationVS
Id: fiji-obs-interpretation-vs
Title: "Fiji Observation Interpretation Value Set"
Description: """
Valueset for interpretations of Observations for Fiji.
Used for interpretaton element for Observations and derived profiles (eg. Vital signs)
Values from  HL7 v3 Code System ObservationInterpretation with added values from WHO/Fiji usage.
"""
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"

// Pulls the observation interpretation codes from HL7 v3 CodeSystem
* include codes from system $obs-interp-cs

// Add any local codes from code system above
* include codes from system FijiObsInterpretationCS
