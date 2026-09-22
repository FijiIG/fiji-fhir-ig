// Pathology/Laboratory Observation Examples - Arterial oxygen &  Lipid panel

// Arterial oxygen level measured in partial pressure 
Instance: ExampleArterialPO2
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example arterial oxygen partial pressure"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#2703-7 "Oxygen [Partial pressure] in Arterial blood"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-09T10:30:00+12:00"
* valueQuantity = 85 'mm[Hg]'
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm[Hg]


// Lipid panel
Instance: ExampleLipidPanel
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example Lipid Panel"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#24331-1 "Lipid panel"
* subject = Reference(Patient/FijiPatientExample)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* issued = "2026-09-23T12:00:00+12:00"
* specimen = Reference(ExampleLipidSpecimen)

* hasMember[0] = Reference(ExampleTotalCholesterol)
* hasMember[+] = Reference(ExampleHDLCholesterol)
* hasMember[+] = Reference(ExampleLDLCholesterol)
* hasMember[+] = Reference(ExampleTriglycerides)

Instance: ExampleTotalCholesterol
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example Total Cholesterol"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/FijiExamplePatient)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* specimen = Reference(ExampleLipidSpecimen)
* valueQuantity = 4.8 'mmol/L'
* valueQuantity.system = $UCUM
* valueQuantity.code = #mmol/L


Instance: ExampleHDLCholesterol
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example HDL Cholesterol"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/FijiExamplePatient)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* specimen = Reference(ExampleLipidSpecimen)
* valueQuantity = 1.3 'mmol/L'
* valueQuantity.system = $UCUM
* valueQuantity.code = #mmol/L


Instance: ExampleLDLCholesterol
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example LDL Cholesterol"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/FijiExamplePatient)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* specimen = Reference(ExampleLipidSpecimen)
* valueQuantity = 2.7 'mmol/L'
* valueQuantity.system = $UCUM
* valueQuantity.code = #mmol/L


Instance: ExampleTriglycerides
InstanceOf: FijiPathologyObservation
Usage: #example
Title: "Example Triglycerides"

* status = #final
* category = $obs-cat-cs#laboratory
* code = $loinc#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/FijiExamplePatient)
* effectiveDateTime = "2026-09-23T09:00:00+12:00"
* specimen = Reference(ExampleLipidSpecimen)
* valueQuantity = 1.4 'mmol/L'
* valueQuantity.system = $UCUM
* valueQuantity.code = #mmol/L

Instance: ExampleLipidSpecimen
InstanceOf: Specimen
Usage: #example
Title: "Example Lipid Panel Specimen"

* status = #final
* type = $SCT#119364003 "Serum specimen"
* subject = Reference(Patient/FijiExamplePatient)

* receivedTime = "2026-09-23T09:15:00+12:00"

* collection.collectedDateTime = "2026-09-23T08:45:00+12:00"
* collection.bodySite = $SCT#82094008 "Forearm structure"