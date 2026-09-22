Instance: FijiConditionExample
InstanceOf: FijiCondition
Usage: #example
Title: "Condition Example - Type 2 Diabetes Mellitus"

* id = "condition-example-diabetes2"

* code = $SCT#44054006 "Type 2 diabetes mellitus"
* clinicalStatus = $condition-clinical-cs#active
* verificationStatus = $condition-verification-cs#confirmed

* category[0] = $condition-category-cs#encounter-diagnosis "Encounter Diagnosis"

* severity = $SCT#6736007 "Moderate"

* bodySite = $SCT#81745001 "Structure of pancreas"

* subject = Reference(FijiPatientExample)

* onsetDateTime = "2024-03-15"

* abatementDateTime = "2025-01-20"

* evidence[0].code = $SCT#365826001 "Finding of endocrine system"

* note.text = "Type 2 diabetes mellitus diagnosed following elevated blood glucose and HbA1c results."