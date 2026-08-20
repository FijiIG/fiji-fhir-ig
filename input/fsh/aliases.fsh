// Externally Published Code Systems
Alias: $loinc = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org
Alias: $RXN = http://www.nlm.nih.gov/research/umls/rxnorm	
Alias: $NCI = http://ncimeta.nci.nih.gov
Alias: $CPT = http://www.ama-assn.org/go/cpt
Alias: $NDFRT = http://hl7.org/fhir/ndfrt
Alias: $UNII = http://fdasis.nlm.nih.gov
Alias: $NDC = http://hl7.org/fhir/sid/ndc
Alias: $CVX = http://hl7.org/fhir/sid/cvx
Alias: $ISOCOUNTRY = urn:iso:std:iso:3166
Alias: $DSM5 = http://hl7.org/fhir/sid/dsm5
Alias: $NUBC = http://www.nubc.org/patient-discharge
Alias: $RADLEX = http://www.radlex.org
Alias: $DICOM = http://dicom.nema.org/resources/ontology/DCM
Alias: $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias: $ICD10PCS = http://www.cms.gov/Medicare/Coding/ICD10
Alias: $ICD11MMS = http://id.who.int/icd/release/11/mms
Alias: $ICDO3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $UMLS = http://terminology.hl7.org/CodeSystem/umls

// Code systems for specific elements
Alias: $id-type-cs = http://terminology.hl7.org/CodeSystem/v2-0203

Alias: $obs-status-cs = http://hl7.org/fhir/observation-status
//Alias: $obs-cat-cs = http://hl7.org/fhir/R4/codesystem-observation-category
Alias: $obs-cat-cs = http://terminology.hl7.org/CodeSystem/observation-category 

Alias: $obs-interp-cs = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $obs-refrange-meaning-cs = http://terminology.hl7.org/CodeSystem/referencerange-meaning

Alias: $medreq-status-cs = http://hl7.org/fhir/CodeSystem/medicationrequest-status 
Alias: $medreq-intent-cs = http://hl7.org/fhir/CodeSystem/medicationrequest-intent
Alias: $medreq-cat-cs = 	http://terminology.hl7.org/CodeSystem/medicationrequest-category

Alias: $allergy-clinical-cs = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergy-verification-cs = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Alias: $condition-clinical-cs = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status-cs = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category-cs = http://terminology.hl7.org/CodeSystem/condition-category

Alias: $specimen-type-cs = http://terminology.hl7.org/CodeSystem/v2-0487

// Value sets for specific elements
Alias: $iso-country-vs = http://hl7.org/fhir/ValueSet/iso3166-1-2
Alias: $id-type-vs = http://terminology.hl7.org/ValueSet/v2-0203
Alias: $obs-status-vs = http://hl7.org/fhir/ValueSet/observation-status
Alias: $obs-cat-vs = http://hl7.org/fhir/ValueSet/observation-category
Alias: $obs-interp-vs = http://hl7.org/fhir/ValueSet/observation-interpretation
Alias: $obs-dataabsent-vs = http://hl7.org/fhir/ValueSet/data-absent-reason
Alias: $obs-diag-svc-vs = http://hl7.org/fhir/ValueSet/diagnostic-service-sections

// ---------- STRUCTURE DEFINITION ALIASES ---------------------------
// Base FHIR Structure Definitions
Alias: $patient = http://hl7.org/fhir/StructureDefinition/Patient
Alias: $practitioner = http://hl7.org/fhir/StructureDefinition/Practitioner
Alias: $practitionerrole = http://hl7.org/fhir/StructureDefinition/PractitionerRole
Alias: $allergyintolerance = http://hl7.org/fhir/StructureDefinition/AllergyIntolerance
Alias: $condition = http://hl7.org/fhir/StructureDefinition/Condition
Alias: $medicationrequest = http://hl7.org/fhir/StructureDefinition/MedicationRequest
Alias: $medicationstatement = http://hl7.org/fhir/StructureDefinition/MedicationStatement
Alias: $organization = http://hl7.org/fhir/StructureDefinition/Organization
Alias: $address = http://hl7.org/fhir/StructureDefinition/Address
Alias: $codeableconcept = http://hl7.org/fhir/StructureDefinition/CodeableConcept
Alias: $humanname = http://hl7.org/fhir/StructureDefinition/HumanName
Alias: $contactpoint = http://hl7.org/fhir/StructureDefinition/ContactPoint
Alias: $identifier = http://hl7.org/fhir/StructureDefinition/Identifier
Alias: $reference = http://hl7.org/fhir/StructureDefinition/Reference
Alias: $narrative = http://hl7.org/fhir/StructureDefinition/Narrative
 
// Commonly Used Extension Definitions
Alias: $patient-nationality = http://hl7.org/fhir/StructureDefinition/patient-nationality
Alias: $patient-religion = http://hl7.org/fhir/StructureDefinition/patient-religion
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $patient-mothersMaidenName = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
Alias: $patient-interpreterRequired = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime
Alias: $geolocation = http://hl7.org/fhir/StructureDefinition/geolocation
Alias: $bodysite = http://hl7.org/fhir/StructureDefinition/bodySite // references BodyStructure
Alias: $allerg-assertdate = http://hl7.org/fhir/StructureDefinition/allergyintolerance-assertedDate
Alias: $cond-assertdate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate

// FHIR profiles for common scenarios
Alias: $obs-bmi = http://hl7.org/fhir/StructureDefinition/bmi
Alias: $obs-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $obs-bodytemp = http://hl7.org/fhir/StructureDefinition/bodytemp
Alias: $obs-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight
Alias: $obs-bp = http://hl7.org/fhir/StructureDefinition/bp
Alias: $obs-heartrate = http://hl7.org/fhir/StructureDefinition/heartrate
Alias: $obs-headcircum = http://hl7.org/fhir/StructureDefinition/headcircum
Alias: $obs-oxygensat = http://hl7.org/fhir/StructureDefinition/oxygensat
Alias: $obs-resprate = http://hl7.org/fhir/StructureDefinition/resprate

