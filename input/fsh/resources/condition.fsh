// Condition/Diagnosis for Fiji Core
Profile: FijiCondition
Parent: Condition
Id: fiji-condition
Title: "Fiji Condition"
Description: """
# Profile of Condition (Diagnosis, Problem List item etc) as defined for Fiji Context.

This profile sets minimum expectations for an Condition resource to record, search, and fetch diagnoses or problmen-list items 
associated with a patient. 

### Mandatory elements  
The following elements must be recorded:
* code - a coded concept for the condition.  The recommendation for future terminology of this element should be selected from SNOMED CT 
 Clinical Finding or Situation with Explicit Context reference sets.   Current and past records may use ICD-10 AM terminology.
Free text entry should only be permitted if no coded value is available or to record uncoded historic condition information.
* subject - a reference to a  Fiji Patient
* clinicalStatus - the clinical status of the condition from one of (active | recurrence | relapse | inactive | remission | resolved)
* category - at least one item from the extensible valueset (problem-list-item | encounter-diagnosis)

### Other elements defined
* verificationStatus - the verification status supports or declines the clincal status (unconfirmed | provisional | differential | confirmed | refuted | entered-in-error)
* onset[x] -  the estimated or actual date or age when the condition was first observed/diagnosed
* abatement[x] - the estimated or actual date when the condition was resolved or went into remission
* severity - subjective severity of condition coded from [condition severity valueset](https://hl7.org/fhir/R4/valueset-condition-severity.html)
* bodySite - a coded concept specifying the part of the body used in this measurement preferred to use SNOMED CT body structure concepts
* evidence.code - coded concept for the manifestation or symptom leading to diagnosis (there may be multiple values).  These concepts 
may be from SNOMED CT clinical finding or procedure sets, or LOINC lab studies or radiology codes.

### Terminology  

As noted above, it is intended that future deployments will use SNOMED CT valuesets for most coded concepts,  but current and 
past information is dominantly recorded using ICD-10-AM terminology for condition codes.

### Alignment with Regional IGs  

The following specifications have been reviewed in development of this profile. 
-	Australian Clinical Data for Interoperability Release 2
-	New Zealand Clinical Data for Interoperability 2026
-	Australian AU Core Implementation Guide 2.0.0
"""
* code 1..1
* code from FijiConditionCodeVS (preferred)
* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* severity 0..1 MS
* bodySite from FijiBodySiteVS (extensible)
* subject only Reference(FijiPatient)
* onsetDateTime MS
* abatement[x] MS
* evidence.code from FijiEvidenceVS (preferred)
* note MS
