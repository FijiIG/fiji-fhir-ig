Instance: FijiConditionExample
InstanceOf: FijiCondition
Usage: #example
Title: "Condition Example - Type 2 Diabetes Mellitus"
Description:  "Example of diagnosis/problem list condition"

* id = "condition-example-diabetes2"

* code = $SCT#44054006 "Type 2 diabetes mellitus"
* clinicalStatus = $condition-clinical-cs#active
* verificationStatus = $condition-verification-cs#confirmed

* category[0] = $condition-category-cs#encounter-diagnosis "Encounter Diagnosis"

* severity = $SCT#6736007 "Moderate severity"

* bodySite = $SCT#15776009 "Pancreas"

* subject = Reference(FijiPatientExample)

* onsetDateTime = "2024-03-15"

* evidence[0].code = $SCT#444751005 "Hemoglobin A1c above reference range"

* note.text = "Type 2 diabetes mellitus diagnosed following elevated blood glucose and HbA1c results."