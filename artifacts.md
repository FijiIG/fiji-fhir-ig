# Artifacts Summary - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BMI Vitals - Fiji](StructureDefinition-fiji-vital-bmi.md) | This profile defines the requirements and usage of an Observation resource recording BMI vital observations. It is based on the FHIR BMI Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 85354-9
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the BMI was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the BMI did not change
 
* valueQuantity - the BMI value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'kg/m2'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md) | This profile defines the requirements and usage of a resource recording Blood Pressure vital observations. It is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code - code defining this is a blood pressure measurement 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 85354-9
 
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Blood pressure was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
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
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md) | This profile defines the requirements and usage of an Observation resource recording Body Temperature vital observations. It is based on the FHIR Body Temperature Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 8310-5
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Body Temperature was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the BMI did not change
 
* valueQuantity - the Blood Pressure value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'Cel'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the BMI measurement took place
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md) | ### OverviewThe **Fiji AllergyIntolerance Profile** defines the minimum data elements and terminology requirements for representing a patient's known or suspected allergies and intolerances within a Fiji FHIR implementation.The profile is based on the FHIR `AllergyIntolerance` resource and constrains the `patient` reference to the **Fiji Patient** profile. Where applicable, terminology bindings use Fiji-specific value sets to support consistent representation of allergy agents and clinical manifestations.This profile can be used to represent both confirmed allergies and other adverse reactions or intolerances where clinically relevant.#### Key Elements
| | | | |
| :--- | :--- | :--- | :--- |
| `code` | 1..1 | ✓ | **Allergy or intolerance agent.**Identifies the substance, medication, food, or other agent to which the patient has an allergy or intolerance. Bound to the[Fiji Allergy Agent ValueSet](ValueSet-fiji-allergy-agent-vs.md)with an extensible binding. |
| `clinicalStatus` | 0..1 | ✓ | Indicates the current clinical status of the allergy or intolerance, such as active or resolved. |
| `verificationStatus` | 0..1 | ✓ | Indicates the degree of certainty that the allergy or intolerance is valid, such as confirmed, unconfirmed, or refuted. |
| `category` | 1..* | ✓ | Identifies the general category of the allergy or intolerance, such as medication, food, or environment. |
| `criticality` | 0..1 | ✓ | Indicates the potential clinical impact of the allergy or intolerance, such as low, high, or unable to assess. |
| `patient` | 1..1 |   | Identifies the patient to whom the allergy or intolerance applies. The reference is constrained to the**Fiji Patient**profile. |
| `onsetDateTime` | 0..1 | ✓ | Records the date and time when the allergy or intolerance was first known or began. |
| `note` | 0..* | ✓ | Provides additional free-text clinical information about the allergy or intolerance that is not captured by the structured elements. |
| `recorder` | 0..1 |   | Identifies the practitioner or practitioner role who recorded the allergy or intolerance. References are constrained to**Fiji Practitioner**or**Fiji PractitionerRole**. |
| `reaction` | 0..* | ✓ | Describes a clinical reaction associated with the allergy or intolerance, including its manifestations and severity. |
| `reaction.manifestation` | 1..* | ✓ | **Clinical symptoms/signs associated with the adverse reaction.**Bound to the[Condition (Diagnosis) Value Set](ValueSet-fiji-condition-code-vs.md)using a preferred binding. |
| `reaction.severity` | 0..1 | ✓ | Indicates the severity of the reaction, such as mild, moderate, or severe. |
#### TerminologyThe following terminology bindings are defined by this profile:
| | | |
| :--- | :--- | :--- |
| `code` | [Fiji Allergy Agent ValueSet](ValueSet-fiji-allergy-agent-vs.md) | Based on subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS. |
| `reaction.manifestation` | [Condition (Diagnosis) Value Set](ValueSet-fiji-condition-code-vs.md) | Based on SNOMED CT concepts for "clinical finding" and "situation with explicit content" curated for International Patient Summary |
The extensible binding on `code` allows an allergy or intolerance agent to be represented using a code outside the Fiji Allergy Agent ValueSet when an appropriate concept is not available in the value set.The preferred binding on `reaction.manifestation` encourages implementers to use concepts from the Fiji Condition Code ValueSet while allowing alternative codes where appropriate.#### UsageAn `AllergyIntolerance` instance should identify the **allergy or intolerance agent** using `code` and, where a reaction has occurred, describe the associated **clinical manifestations** using `reaction.manifestation`. The `reaction.severity` element may be used to communicate the clinical severity of the reaction.Where the identity of the person responsible for recording the information is known, `recorder` should reference the relevant Fiji Practitioner or Fiji PractitionerRole.##### No Known Allergies RepresentationThe recommended 'best practice' for representing 'No Known Allergies' requires a combination of the following element settings:1. `code`: should include both the SNOMED CT "716186003" and the HL7 "no-known-allergies" codings
1. `clinicalStatus`: should be set to "active"
1. `verificationStatus`: should be set to "confirmed" This indicates that a clinican has formally verified that status, and the use of both codings maximizes interoperability ** Note: ** Any other recorded Active allergy for the patient should negate a No Known Allergy record.
 |
| [Fiji Condition](StructureDefinition-fiji-condition.md) | ### Profile of Condition (Diagnosis, Problem List item etc) as defined for Fiji Context.This profile sets minimum expectations for an Condition resource to record, search, and fetch diagnoses or problmen-list items associated with a patient.### Mandatory elementsThe following elements must be recorded:* code - a coded concept for the condition. The recommendation for future terminology of this element should be selected from [Condition (Diagnosis) Value Set](ValueSet-fiji-condition-code-vs.md) SNOMED CT Clinical Finding or Situation with Explicit Context reference sets. Current and past records may use ICD-10 AM terminology. Free text entry should only be permitted if no coded value is available or to record uncoded historic condition information.
* subject - a reference to a Fiji Patient
* clinicalStatus - the clinical status of the condition from one of (`active`, `recurrence`, `relapse`, `inactive`, `remission` or `resolved`)
* category - at least one item from the extensible valueset (`problem-list-item` or `encounter-diagnosis`)
### Other elements defined* verificationStatus - the verification status supports or declines the clincal status (`unconfirmed, `provisional`, `differential`, `confirmed`, `refuted` or `entered-in-error`)
* onset[x] - the estimated or actual date or age when the condition was first observed/diagnosed
* abatement[x] - the estimated or actual date when the condition was resolved or went into remission
* severity - subjective severity of condition coded from [condition severity valueset](https://hl7.org/fhir/R4/valueset-condition-severity.html)
* bodySite - a coded concept specifying the part of the body used in this measurement preferred to use [Body Site Value Set](ValueSet-fiji-body-site-vs.md) derived from SNOMED CT body structure concepts
* evidence.code - coded concept for the manifestation or symptom leading to diagnosis (there may be multiple values). It is preferred that these concepts be derived from [Condition Evidence Value Set](ValueSet-fiji-evidence-vs.md) SNOMED CT clinical finding or procedure sets, or LOINC lab studies or radiology codes.
### TerminologyAs noted above, it is intended that future deployments will use SNOMED CT valuesets for most coded concepts, but current and past information is dominantly recorded using ICD-10-AM terminology for condition codes.### Alignment with Regional IGsThe following specifications have been reviewed in development of this profile.* Australian Clinical Data for Interoperability Release 2
* New Zealand Clinical Data for Interoperability 2026
* Australian AU Core Implementation Guide 2.0.0
 |
| [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md) | ### Fiji Diagnostic ObservationThe **Fiji Diagnostic Observation** profile represents an individual observation or finding produced as part of a radiology or other diagnostic investigation. It is based on the FHIR `Observation` resource and provides constraints and terminology bindings appropriate for diagnostic results in Fiji.The profile is intended to support the representation of individual diagnostic findings, including coded radiology findings, anatomical locations, performers, and component observations.#### Key Elements
| | | |
| :--- | :--- | :--- |
| `status` | 1..1 | The status of the diagnostic observation, indicating whether the result is preliminary, final, amended, or has another applicable status. |
| `category` | 1..* | Classifies the observation as belonging to a diagnostic service or discipline. Bound to the FHIR Diagnostic Service Sections value set with a preferred binding. |
| `code` | 1..1 | Identifies the type of diagnostic finding or observation. Bound to[Radiology Findings Value Set](ValueSet-fiji-radiology-findings-vs.md)with a preferred binding. |
| `subject` | 1..1 | Identifies the patient who is the subject of the diagnostic observation. Restricted to`FijiPatient`. |
| `effective[x]` | 1..1 | The clinically relevant date/time or period associated with the observation. |
| `performer` | 0..* | Identifies the individual or organisation responsible for performing or producing the observation. Restricted to a Fiji patient, practitioner, practitioner role, or organisation. |
| `value[x]` | 0..1 | The result of the diagnostic observation. The type of value is determined by the nature of the observation. |
| `dataAbsentReason` | 0..1 | Provides a reason when a result is not available. Bound to the FHIR Data Absent Reason Value Set with an extensible binding. |
| `bodySite` | 0..1 | Identifies the anatomical site associated with the diagnostic observation. Bound to the[Body Site Value Set](ValueSet-fiji-body-site-vs.md)with an extensible binding. |
| `hasMember` | 0..* | References other diagnostic observations that are related to or form part of this observation. References are restricted to`FijiDiagnosticObservation`. |
| `component` | 0..* | Represents component observations that form part of the diagnostic observation. |
| `component.code` | 1..1 | Identifies the type of the component observation. |
| `component.value[x]` | 0..1 | The result of the component observation. |
| `component.dataAbsentReason` | 0..1 | Provides a reason when the value of a component observation is not available. |
#### Terminology Bindings
| | | | |
| :--- | :--- | :--- | :--- |
| `category` | Diagnostic Service Sections | Preferred | Identifies the diagnostic service or discipline associated with the observation. |
| `code` | [Radiology Findings Value Set](ValueSet-fiji-radiology-findings-vs.md) | Preferred | Identifies the diagnostic finding or observation using relevant SNOMED CT concepts. |
| `dataAbsentReason` | FHIR Data Absent Reason | Extensible | Provides a standard reason when an observation result is unavailable. |
| `bodySite` | [Body Site Value Set](ValueSet-fiji-body-site-vs.md) | Extensible | Identifies the anatomical or acquired body structure associated with the observation using SNOMED CT. |
#### Diagnostic Finding CodeThe `code` element identifies the diagnostic finding represented by the observation and is bound to [Radiology Findings Value Set](ValueSet-fiji-radiology-findings-vs.md).The value set is defined using SNOMED CT concepts that are both clinical findings and associated with imaging procedures:`descendant-of 404684003 |Clinical finding| AND descendant-of 363679005 |Imaging procedure|`This provides a terminology-based approach to identifying findings relevant to radiology and imaging rather than maintaining a fixed list of individual concepts.#### Body SiteWhere applicable, `bodySite` identifies the anatomical location to which the diagnostic observation relates. The element is bound to [Body Site Value Set](ValueSet-fiji-body-site-vs.md) using an extensible binding.The value set is based on SNOMED CT anatomical or acquired body structure concepts:`&lt; 442083009 |Anatomical or acquired body structure (body structure)|`This allows standard SNOMED CT concepts to be used to represent the anatomical site while allowing additional concepts where required.#### Component ObservationsThe `component` element may be used when a diagnostic observation contains additional observations that are integral to the main observation. Each component must have a `code` identifying what is being observed and may contain either a result in `value[x]` or a `dataAbsentReason` when the result is unavailable.Components are appropriate where the individual results form part of a single overall observation and do not need to be represented as separate resources.#### Related Diagnostic ObservationsThe `hasMember` element may be used to associate the observation with other diagnostic observations. References are restricted to `FijiDiagnosticObservation`, supporting the representation of groups of related diagnostic findings.For example, a diagnostic observation may use `hasMember` to reference separate observations representing individual findings from the same diagnostic investigation.#### Missing ResultsBoth the main observation and its components support `dataAbsentReason`. This should be used when a result that would otherwise be represented in `value[x]` is not available, rather than leaving the reason for the missing result implicit.The profile uses the standard FHIR Data Absent Reason value set with an **extensible** binding. |
| [Fiji Healthcare Administrative Zone](StructureDefinition-fiji-administrative-zone.md) | ### Fiji Healthcare Administrative ZoneThe `FijiAdministrativeZone` profile represents a healthcare administrative organizational unit of the Fiji Implementation Guide (IG). FijiAdministrativeZone resources combine to create a hierarchy of organizational units that describe the administrative structure of the national health provision. The profile supports a range of healthcare administrative zones including Divisions, Subdivisions, Medical Areas and Nursing Zones.This profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities. This profile is to be distinguished from the `FijiFacility` profile which represents the organizational units are involved in the direct provision of healthcare services.### Key ElementsThe following table describes the key elements defined or constrained by the `FijiOrganization` profile.
| | | | |
| :--- | :--- | :--- | :--- |
| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |
| `type` | 1..1 | `CodeableConcept` | Describes the type of healthcare administrative zone (Divisions, Subdivisions, Medical Areas and Nursing Zones). The element is bound to[Health Administrative Zones Value Set](ValueSet-fiji-admin-zones.md)with a required binding. |
| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |
| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |
| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the`FijiAddress`profile, enabling the use of Fiji-specific address structures. |
| `partOf` | 0..1 | `Reference(FijiAdministrativeZone)` | Identifies the parent FijiAdministrativeZone to which this administrative zone belongs. This supports the representation of organizational hierarchies and administrative relationships. |
### Implementation Guidance* **Organization classification:** The `type` element should be used to classify the administrative zone using codes from [Health Administrative Zones Value Set](ValueSet-fiji-admin-zones.md). The required binding mandates that any resource of this type must use the specified terminology.
* **Organization naming:** The `name` element is mandatory and must contain the organization's name.
* **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.
* **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.
* **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.
### Conformance NotesThe `FijiAdministrativeZone` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.Elements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.The `name` and the `type` elements are mandatory with `1..1` cardinality. Other elements may be absent where permitted by their cardinalities. |
| [Fiji Healthcare Device](StructureDefinition-fiji-device.md) | This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. A device is a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device. |
| [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md) | ### Fiji Healthcare EncounterThe **Fiji Healthcare Encounter** profile represents an interaction between a patient and the healthcare system in which healthcare services are provided. It is based on the FHIR `Encounter` resource and is intended to support the recording of clinical encounters within the scope of this Implementation Guide.The profile constrains the patient, encounter classification, service type, participants, timing, reasons for the encounter, locations, and responsible healthcare organisation. Where appropriate, references are restricted to the corresponding Fiji profiles.### Key Elements
| | | | |
| :--- | :--- | :--- | :--- |
| `identifier` | 0..* | Identifier | Business identifier(s) assigned to the encounter, such as a facility encounter number or local medical record number. |
| `status` | **1..1** | Code | Current status of the encounter, such as planned, in-progress, finished, or cancelled. |
| `class` | **1..1** | [HL7 ActEncounterCode ValueSet](https://terminology.hl7.org/7.5.0/en/ValueSet-v3-ActEncounterCode.html) | Classification of the encounter, for example inpatient, outpatient, emergency, or ambulatory care. |
| `serviceType` | 0..* | [Service Type Valueset](ValueSet-fiji-service-type-vs.md)(preferred) | The type of healthcare service provided during the encounter. |
| `subject` | **1..1** | Reference(`FijiPatient`) | The patient who is the subject of the encounter. |
| `participant.type` | 0..* | [FHIR R4 Encounter Participant Type Value Set](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html) | Identifies the role or function of a participant in the encounter, such as attending clinician or consultant. |
| `participant.individual` | 0..1 | Reference(`FijiPractitioner`,`FijiPractitionerRole`, or`FijiRelatedPerson`) | Identifies the person participating in the encounter. |
| `period` | 0..1 | Period | The date and time during which the encounter took place or is expected to take place. |
| `reasonCode` | 0..* | [Encounter Reason Value Set](ValueSet-fiji-encounter-reason-vs.md)(preferred) | Coded reason for the encounter, such as a presenting complaint, clinical problem, or other reason for seeking care. |
| `reasonReference` | 0..* | Reference(`FijiCondition`or`FijiProcedure`) | References a condition or procedure that is the reason for the encounter. |
| `location.location` | 0..1 | Reference(`FijiLocation`) | The physical location where the encounter occurred. |
| `serviceProvider` | 0..1 | Reference(`FijiOrganization`) | The organisation responsible for providing the healthcare services associated with the encounter. |
### Encounter ClassificationThe `class` element is mandatory and is bound to the [HL7 ActEncounterCode Value Set](https://terminology.hl7.org/7.5.0/en/ValueSet-v3-ActEncounterCode.html). This identifies the broad setting or classification of the encounter and should be used consistently to distinguish, for example, inpatient, outpatient, emergency, and other forms of healthcare delivery.### Service Type`serviceType` identifies the specific type of healthcare service being provided. It is bound with a **preferred** binding to [Service Type Valueset](ValueSet-fiji-service-type-vs.md), allowing implementations to use the Fiji-defined terminology where applicable while permitting other codes where necessary.### Patient and ParticipantsThe `subject` element is mandatory and is restricted to a reference to a `FijiPatient`.Encounter participants may be recorded using `participant.type` to describe their role and `participant.individual` to identify the participating person. Participants are restricted to a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`.### Reason for EncounterThe reason for the encounter can be represented using either:* `reasonCode` for a coded reason that does not require a reference to another resource; or
* `reasonReference` when the reason is represented by an existing `FijiCondition` or `FijiProcedure` resource.
The `reasonCode` element has a preferred binding to [Encounter Reason Value Set](ValueSet-fiji-encounter-reason-vs.md).### Location and Service ProviderThe `location.location` element identifies where the encounter occurred and is restricted to a `FijiLocation`.The `serviceProvider` identifies the organisation responsible for the healthcare service and is restricted to a `FijiOrganization`.### Terminology Bindings
| | | |
| :--- | :--- | :--- |
| `class` | [HL7 ActEncounterCode Value Set](https://terminology.hl7.org/7.5.0/en/ValueSet-v3-ActEncounterCode.html) | **Preferred** |
| `serviceType` | [Service Type Valueset](ValueSet-fiji-service-type-vs.md) | **Preferred** |
| `participant.type` | [FHIR R4 Encounter Participant Type Value Set](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html) | **Required** |
| `reasonCode` | [Encounter Reason Value Set](ValueSet-fiji-encounter-reason-vs.md) | **Preferred** |
### Relationship to Other ResourcesA `FijiEncounter` may be associated with other clinical and administrative resources, including:* **Patient** – identifies the patient receiving care.
* **Practitioner / PractitionerRole** – identifies healthcare professionals involved in the encounter.
* **RelatedPerson** – identifies other people participating in the patient's care.
* **Condition** – may identify a condition that is the reason for the encounter.
* **Procedure** – may identify a procedure associated with or motivating the encounter.
* **Location** – identifies where care was provided.
* **Organization** – identifies the healthcare organisation responsible for the encounter.
This profile is currently **work in progress** and may be subject to further refinement as encounter requirements for the Fiji implementation are established. |
| [Fiji Healthcare Facility or Organization](StructureDefinition-fiji-facility.md) | ### Fiji Healthcare Facility or OrganizationThe `FijiFacililty` profile represents a healthcare organization, facility, service provider, or other organizational entity involved in the delivery of healthcare within the scope of the Fiji Implementation Guide (IG). It is to be distinguished from the `FijiAdministrativeZone` profile which represents the organizational units are involved in healthcare administration but do not directly provide healthcare services.This profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities.Every `FijiFacility` resource **must include a national facility identifier** issued or recognized within the Fiji healthcare context. This identifier is represented by the `identifier[nationalOrganizationId]` slice and uses the identifier system:`https://fhir.health.gov.fj/identifier/facility`The national facility identifier provides a consistent means of identifying organizations across systems and supports interoperability between healthcare applications and services.The profile supports a range of healthcare entities, including hospitals, health centres, clinics, nursing stations, laboratories, and other healthcare service providers. Organizations may be associated with a parent organization to represent organizational hierarchies, such as a health facility belonging to a larger healthcare administration.### Key ElementsThe following table describes the key elements defined or constrained by the `FijiOrganization` profile.
| | | | |
| :--- | :--- | :--- | :--- |
| `identifier` | 1..* | `Identifier` | One or more identifiers for the facility. At least one identifier must conform to the`nationalOrganizationId`slice, using the required national identifier system. Additional identifiers using other systems are permitted. |
| `identifier[nationalOrganizationId]` | 1..1 | `Identifier` | The mandatory national facility identifier. Its`system`is fixed to`https://fhir.health.gov.fj/identifier/facility`, and its`value`is required. |
| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |
| `type` | 0..* | `CodeableConcept` | Describes the kind or role of facility, such as a hospital, health centre, laboratory, or other healthcare service. The element is bound to`FijiOrganizationRoleVS`with a preferred binding. |
| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |
| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |
| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the`FijiAddress`profile, enabling the use of Fiji-specific address structures. |
| `partOf` | 0..1 | `Reference(FijiAdministrativeZone)` | Identifies the parent FijiAdministrativeZone to which this facility belongs. This supports the representation of organizational hierarchies and administrative relationships. |
### Implementation Guidance* **National organization identifier:** Every organization record must contain exactly one identifier in the `nationalOrganizationId` slice. The identifier system is fixed to `https://fhir.health.gov.fj/identifier/facility`, and the identifier value must be populated with the facility's national identifier.
* **Additional identifiers:** Implementations may provide additional identifiers using other identifier systems. These must not replace the required national organization identifier.
* **Organization classification:** The `type` element should be used to classify the facility's role using codes from `FijiOrganizationRoleVS`. The preferred binding encourages use of the specified terminology while allowing other codes where appropriate.
* **Organization naming:** The `name` element is mandatory and must contain the organization's name.
* **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.
* **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.
* **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.
### Conformance NotesThe `FijiFacililty` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.The `identifier` element has a minimum cardinality of `1..*`. The `nationalOrganizationId` slice has a cardinality of `1..1`, requiring exactly one identifier that uses the specified national identifier system. The slicing rules are open, so additional identifiers are permitted.Elements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.The `name` element is required by its `1..1` cardinality. Other elements may be absent where permitted by their cardinalities. |
| [Fiji Healthcare Location](StructureDefinition-fiji-location.md) | This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. A Location includes both incidental locations (a place which is used for healthcare without prior designation or authorization) and dedicated, formally appointed locations. These locations are not intended to cover parts of the body, or locations on a patient where something occurred (i.e. a patient's broken leg), but can happily cover the location where the patient broke the leg (the playground) |
| [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md) | ### Fiji Healthcare Procedure ProfileThe `FijiProcedure` profile defines how the FHIR `Procedure` resource is used to record current and historical procedures performed on or for a patient within the Fiji Healthcare Implementation Guide.A procedure is an activity performed on, with, or for a patient as part of the provision of healthcare or support services. Examples include surgical and diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modifications, and exercise.Procedures may be performed by healthcare professionals, service providers, friends or relatives, or by the patient themselves.This profile constrains the standard FHIR `Procedure` resource to support consistent recording of procedure details, including the procedure performed, its status, the patient, the associated encounter and service request, the performers, the reasons for the procedure, the anatomical site, the outcome, and any complications.### Resource Details
| | |
| :--- | :--- |
| Resource | `Procedure` |
| Profile | `FijiProcedure` |
| Profile ID | `fiji-procedure` |
| Parent | `Procedure` |
| Title | Fiji Healthcare Procedure |
### Profile ElementsThe following table describes the key elements defined or constrained by the profile. Cardinalities and terminology bindings reflect the supplied FSH.
| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `basedOn` | 0..* | Reference(`FijiServiceRequest`) | — | References the service request(s) that authorised or initiated the procedure. |
| `status` | 1..1 | Code | FHIR Procedure status codes | Indicates the current status of the procedure, such as preparation, in progress, completed, or not done. |
| `category` | 0..1 | CodeableConcept | `$proc-cat-vs`(Preferred) | Classifies the procedure into a broader category, such as a surgical or diagnostic procedure. |
| `code` | 1..1 | CodeableConcept | `$proc-code-ips-vs`(Preferred) | Identifies the specific procedure performed or intended, using an appropriate procedure code. |
| `subject` | 1..1 | Reference(`FijiPatient`) | — | Identifies the patient on whom, with whom, or for whom the procedure was performed. |
| `encounter` | 0..1 | Reference(`FijiEncounter`) | — | References the healthcare encounter associated with the procedure, when applicable. |
| `performed[x]` | 0..1 | `dateTime`,`Period`,`string`,`Age`,`Range`, or`Timing` | — | Records when the procedure was performed or the period during which it took place. |
| `performer` | 0..* | BackboneElement | — | Identifies the individuals or organisations involved in performing the procedure. |
| `performer.actor` | — | Reference(`FijiPractitioner`,`FijiPractitionerRole`,`FijiOrganization`, or`FijiPatient`) | — | Identifies the person, role, organisation, or patient who performed the procedure. |
| `reasonCode` | 0..* | CodeableConcept | `$proc-reason-vs`(Preferred) | Records the reason or clinical indication for performing the procedure. |
| `bodySite` | 0..* | CodeableConcept | `FijiBodySiteVS`(Extensible) | Identifies the anatomical location on which the procedure was performed. |
| `outcome` | 0..1 | CodeableConcept | `$proc-outcome-vs`(Preferred) | Records the outcome of the procedure, where known. |
| `complication` | 0..* | CodeableConcept | `FijiConditionCodeVS`(Preferred) | Records complications associated with the procedure. |
| `note` | 0..* | Annotation | — | Provides additional narrative information about the procedure. |
### Implementation Guidance#### Procedure Identification and ClassificationThe `code` element is mandatory and identifies the specific procedure. Implementations should use appropriate codes from the preferred `$proc-code-ips-vs` value set. The optional `category` element provides a broader classification using `$proc-cat-vs`.#### Status and TimingThe `status` element is mandatory and indicates the lifecycle state of the procedure. The `performed[x]` element records the procedure's timing when available. Implementations should distinguish between a procedure that was completed, is in progress, or was not performed, using the appropriate status and timing information.#### Patient, Encounter and Service Request ReferencesThe `subject` element must reference a `FijiPatient`. Where applicable, `encounter` links the procedure to a `FijiEncounter`, while `basedOn` links it to one or more `FijiServiceRequest` resources.These references support traceability between the patient, the clinical encounter, the requested service, and the procedure performed.#### PerformersThe `performer` element records those involved in performing the procedure. The `performer.actor` reference is constrained to the following Fiji profiles:* `FijiPractitioner`
* `FijiPractitionerRole`
* `FijiOrganization`
* `FijiPatient`
This allows procedures performed by healthcare professionals, healthcare organisations, or patients themselves to be represented.#### Clinical Context and Anatomical SiteThe `reasonCode` element captures the clinical reason or indication for the procedure. The `bodySite` element identifies the relevant anatomical site and uses the `FijiBodySiteVS` value set with an extensible binding.Implementations should record these elements when the information is relevant and available.#### Outcomes and ComplicationsThe optional `outcome` element records the result of the procedure using the preferred `$proc-outcome-vs` value set. The `complication` element allows one or more complications to be recorded using the preferred `FijiConditionCodeVS` value set.#### Additional NotesThe `note` element supports narrative information that supplements the structured procedure data, such as relevant clinical observations or additional details about how the procedure was performed.### Conformance Requirements* The `status`, `code`, and `subject` elements are mandatory.
* The `subject` must reference a `FijiPatient`.
* The `basedOn` element, when present, must reference a `FijiServiceRequest`.
* The `encounter` element, when present, must reference a `FijiEncounter`.
* The `performer.actor` reference is restricted to the specified Fiji practitioner, practitioner role, organisation, or patient profiles.
* Terminology bindings marked **Preferred** should be followed where suitable codes are available.
* The `bodySite` binding is **Extensible**; other codes may be used when an appropriate concept is not available in the specified value set.
* Elements marked Must Support (`MS`) are expected to be supported by conformant implementations in accordance with the implementation guide's Must Support requirements.
 |
| [Fiji Healthcare Related Person](StructureDefinition-fiji-related-person.md) | This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. |
| [Fiji Healthcare Service Request](StructureDefinition-fiji-service-request.md) | This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.A service request is a record of a request for a procedure or diagnostic or other service to be planned, proposed, or performed, with or on a patient. The request will lead to either a Procedure or DiagnosticReport, which in turn may reference associated resources/documentation such as observations, images, findings that are relevant to the treatment/management of the subject.This resource may be used to share relevant information required to support a referral or a transfer of care request from one practitioner or organization to another when a patient is required to be referred to another provider for a consultation /second opinion and/or for short term or longer term management of one or more health issues or problems.. |
| [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md) | ### Fiji Imaging Diagnostic ReportThe **Fiji Imaging Diagnostic Report** profile represents a diagnostic report for imaging examinations performed within Fiji health information systems. It is based on the FHIR `DiagnosticReport` resource and provides additional constraints to support interoperability between radiology information systems (RIS), imaging systems, and other health information systems.The profile requires each report to have a **RIS Accession Number**, which provides a unique identifier for the imaging examination within the radiology workflow. The report may also reference one or more `ServiceRequest` resources through `basedOn`, allowing the report to be linked to the request or referral that initiated the examination.The `category` element supports both **HL7 diagnostic service classification** and **DICOM modality classification**. These are represented as separate slices so that an implementation can provide either or both classifications. This allows the profile to accommodate systems that use HL7 terminology, DICOM terminology, or both.The `code` element identifies the type of imaging diagnostic report and is bound to the Fiji radiology findings value set. The patient, encounter, report timing, performers, interpreters, and report presentation are also constrained to support consistent exchange of imaging results.### Key Elements
| | | |
| :--- | :--- | :--- |
| `identifier` | 1..* | Identifiers for the diagnostic report. The identifier list must contain one RIS Accession Number. |
| `identifier[risAccession]` | 1..1 | The RIS Accession Number assigned to the imaging examination. |
| `identifier[risAccession].system` | 1..1 | Fixed to the Fiji RIS Accession Number NamingSystem. |
| `identifier[risAccession].value` | 1..1 | The accession number assigned by the radiology information system. |
| `basedOn` | 0..* | References the service request(s) that resulted in the imaging examination. References are restricted to`FijiServiceRequest`. |
| `status` | 1..1 | The current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |
| `category` | 1..* | Classification of the diagnostic service and/or imaging modality associated with the report. |
| `category[hl7DiagnosticService]` | 0..1 | HL7 diagnostic service classification. Uses the HL7 diagnostic service value set. |
| `category[dicomModality]` | 0..1 | DICOM modality classification. Uses the Fiji DICOM Modality value set. |
| `code` | 1..1 | Code identifying the type of imaging diagnostic report or examination. Bound to[Radiology Findings Value Set](ValueSet-fiji-radiology-findings-vs.md)with a preferred binding. |
| `subject` | 1..1 | The patient to whom the report relates. Restricted to`FijiPatient`. |
| `encounter` | 0..1 | The healthcare encounter associated with the imaging examination. Restricted to`FijiEncounter`. |
| `effective[x]` | 1..1 | The clinically relevant time or period of the imaging examination. |
| `issued` | 1..1 | The date and time at which the diagnostic report was issued. |
| `performer` | 0..* | The organisation, practitioner, or practitioner role responsible for performing the imaging examination or producing the report. |
| `resultsInterpreter` | 0..* | The practitioner, practitioner role, or organisation responsible for interpreting the imaging results. |
| `presentedForm` | 1..* | The report as a human-readable or otherwise presentable document, such as a PDF. |
| `presentedForm.contentType` | 1..1 | MIME type of the presented report, such as`application/pdf`. |
| `presentedForm.data` | 1..1 | The report content encoded as base64 data. |
| `presentedForm.language` | 0..1 | Language of the presented report, using the FHIR language value set. |
### Imaging Modality and Diagnostic ServiceThe `category` element uses open slicing to allow both HL7 and DICOM classifications to be represented independently:* **HL7 Diagnostic Service** identifies the type of diagnostic service that produced the report.
* **DICOM Modality** identifies the imaging modality used to acquire the examination, such as CT, MR, CR, or ultrasound.
Both slices are optional individually, but at least one `category` element is required. Implementations are encouraged to provide both classifications where they are available.This approach avoids combining multiple modality codes into a single code or comma-separated value and allows multiple classifications to be represented using standard FHIR coding structures.### Report PresentationAt least one `presentedForm` is required so that the diagnostic report can be exchanged in a human-readable or otherwise renderable form. The content type and encoded data are required. Where appropriate, implementations may provide the final report as a PDF document using `application/pdf`.The `language` element may be populated to identify the language used in the presented report. |
| [Fiji Immunization](StructureDefinition-fiji-immunization.md) | ### Profile of Immunizations for Fiji PatientThis profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history associated with a patient.### Mandatory elementsThe following elements must be recorded:* `status` - one of the following codes (`completed`, `entered-in-error` or `not-done`)
* `vaccineCode` - a vaccine code from [Immunization Value Set](ValueSet-imm-vs.md) If no appropriate value is available then a coded value from another terminology may be used. Free text entry should only be permitted if no coded value is available or to record historic immunizations.
* `patient` - a reference to a Fiji Patient
* `occurrence[x]` - the vaccine administration date can be recorded using one of the two options below 
* `occurenceDateTime` (recommended for use where possible)
* `occurrenceString` - this is a free text representation of the date or administration
 
### Other elements defined* `statusReason` - provides reason for administration of vaccine - mandatory if vaccine not administered (currently uses ICD11 valueset from DAK, suggest converting to SNOMED CT)
* `lotNumber` - is not mandatory but should be recorded if known
* `encounter` - a reference to an encounter where/when the immunization took place
* `location` only Reference(FijiLocation)
* `site` - body location where the vaccine was administered (use [Body Site Value Set](ValueSet-fiji-body-site-vs.md) or extend if required)
* `route` - how vaccine entered body use [Medication or Vaccine Route Value Set](ValueSet-fiji-medication-route-vs.md)
* `protocolApplied.doseNumber` - should be recorded if multiple doses are required
* `protocolApplied.seriesDoses` - should be recorded where multiple doses are recommended for full immunity
* `performer.actor` - who administered the vaccine can be Fiji Practitioner, PractitionerRole or Organization
* `note` - Extra information about the immunization that is not conveyed by the other attributes
* `reaction` - Details of an adverse reaction that follows immunization 
* `reaction.date` - mandatory if a reaction is recorded. The date/time the adverse reaction started.
* `reaction.detail` - mandatory if a reaction is recorded. This is a reference to an Observation that describes the adverse reaction.
 
### TerminologyImmunization.vaccineCode.coding shall be populated by one of the codes from [Immunization Value Set](ValueSet-imm-vs.md) where such a code exists for the vaccine. Additional codes may be used where no matching code is present.### Alignment with Regional IGsThe following specifications have been reviewed in development of this profile.* Australian Clinical Data for Interoperability Release 2
* New Zealand Clinical Data for Interoperability 2026
* Australian AU Core Implementation Guide 2.0.0
* WHO DAK Administer Vaccine Immunization Elements
 |
| [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md) | ### Fiji Pathology DiagnosticReportThe **Fiji Pathology DiagnosticReport** profile defines the representation of a pathology diagnostic report in the Fiji FHIR Implementation Guide. It is based on the FHIR `DiagnosticReport` resource and is intended to provide a structured representation of pathology investigations and their results.A pathology diagnostic report provides a summary of the investigation performed, identifies the patient and relevant specimens, records the clinicians or organisations responsible for the report, and links to the individual pathology observations that comprise the report.The profile requires a report identifier, a pathology service category, a coded description of the investigation, the patient, the clinically relevant date/time, and at least one pathology result. Where applicable, the report can also reference the `ServiceRequest` that initiated the investigation and the `Specimen` used for testing.### Key Elements
| | | |
| :--- | :--- | :--- |
| `identifier` | 1..* | Business identifier(s) for the diagnostic report. At least one identifier is required to allow the report to be uniquely identified within the relevant pathology system. |
| `basedOn` | 0..* | References the`ServiceRequest`that initiated or authorised the pathology investigation. References are constrained to`FijiServiceRequest`. |
| `status` | 1..1 | Indicates the current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |
| `category` | 1..1 | Identifies the type of diagnostic service. This profile fixes the category to the laboratory value`LAB`from the diagnostic service category code system. |
| `code` | 1..1 | Coded description of the pathology investigation or diagnostic service being reported. The code is bound to[Observation Value Set](ValueSet-obs-vs.md)with a preferred binding. |
| `subject` | 1..1 | Identifies the patient who is the subject of the pathology investigation. References are constrained to`FijiPatient`. |
| `effective[x]` | 1..1 | Records the clinically relevant date/time or period for the pathology investigation, such as the time the specimen was collected or the investigation was performed. |
| `issued` | 1..1 | Date and time at which the diagnostic report was issued and made available. |
| `performer` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for performing the pathology investigation. References are constrained to`FijiPractitioner`,`FijiPractitionerRole`, or`FijiOrganization`. |
| `resultsInterpreter` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for interpreting or reviewing the pathology results. References are constrained to`FijiPractitioner`,`FijiPractitionerRole`, or`FijiOrganization`. |
| `specimen` | 0..* | Identifies the specimen(s) on which the pathology investigation was performed. References are constrained to`FijiSpecimen`. |
| `result` | 1..* | References the individual pathology observations that make up the diagnostic report. References are constrained to`FijiPathologyObservation`. At least one result is required. |
| `presentedForm` | 1..* | Provides the complete report in an electronically presentable format, such as a PDF document. At least one presented form is required. |
| `presentedForm.contentType` | 1..1 | Specifies the MIME type of the presented report, such as`application/pdf`. |
| `presentedForm.data` | 1..1 | Contains the report content encoded as`base64Binary`. |
| `presentedForm.language` | 0..1 | Identifies the language in which the presented report is written. The value is bound to the`$lang-vs`language ValueSet. |
### Relationships to Other ResourcesThe profile establishes the following important relationships:* **ServiceRequest** — `basedOn` links the diagnostic report to the request that initiated the pathology investigation.
* **Patient** — `subject` identifies the patient for whom the report was produced.
* **Specimen** — `specimen` identifies the biological specimen(s) examined.
* **Pathology Observation** — `result` links the report to the individual pathology results and measurements.
* **Practitioner / PractitionerRole / Organization** — `performer` identifies the party responsible for performing the investigation, while `resultsInterpreter` identifies the party responsible for interpreting or reviewing the results.
### Report PresentationThe `presentedForm` element is mandatory and is intended to support exchange of the complete human-readable pathology report in addition to the structured FHIR representation. The profile requires the content type and report data to be present. The language may also be specified using the language ValueSet defined for the Fiji Implementation Guide.The structured `result` references should be used for individual pathology findings and values, while `presentedForm` provides the complete report as a document for presentation or archival purposes. |
| [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md) | ### Fiji Medication DispenseThe Fiji Medication Dispense profile defines the minimum expectations for recording medication dispensing events in Fiji healthcare settings. It is based on the FHIR R4 `MedicationDispense` resource and supports the exchange of information about medications supplied to patients, including the dispensing status, medication details, authorizing prescription, dispensing practitioner or organization, quantity supplied, and date of handover.The profile introduces a mandatory mSupply dispense identifier to support consistent identification and traceability of dispensing records across systems. It also constrains references to Fiji-specific profiles to improve interoperability between Fiji healthcare information systems.### Scope and UsageThis profile is intended for recording medication dispensing events, including the supply of medications in response to an authorized prescription. It supports:* Identifying each dispense record using one or more identifiers, including a mandatory mSupply dispense identifier.
* Recording the status of the dispensing event.
* Identifying the medication supplied using a coded concept or a reference to a Fiji Medication resource.
* Identifying the patient receiving the medication.
* Linking the dispense to one or more authorizing medication requests.
* Identifying the practitioner, practitioner role, or organization responsible for dispensing.
* Recording the quantity supplied and the date the medication was handed over.
* Optionally associating the dispense with an encounter, dispensing location, preparation date, days supply, and dosage instructions.
### Key ElementsThe following table describes the important, mandatory, and Must Support elements defined by this profile.
| | | |
| :--- | :--- | :--- |
| `identifier` | 1..* Must Support | Identifies the medication dispense record. At least one identifier is required. The identifiers are sliced by`system`, allowing identifiers from different assigning systems. |
| `identifier.use` | Base cardinality; Must Support | Indicates the purpose of an identifier, such as usual, official, or secondary. Implementations should populate this when the identifier's use is known. |
| `identifier.system` | 1..1 Must Support | Identifies the namespace that assigns the identifier. Every identifier must have a system URI. |
| `identifier.value` | 1..1 Must Support | Contains the identifier value assigned by the relevant system. Every identifier must have a value. |
| `identifier[mSupplyDispenseId]` | 1..1 Must Support | The mandatory identifier slice for the mSupply dispensing system. Every dispense record must contain exactly one identifier using the required system URI. |
| `identifier[mSupplyDispenseId].system` | 1..1 | Must equal`http://fhir.health.gov.fj/identifier/msupply-dispense`. This fixed URI identifies the mSupply dispense identifier namespace. |
| `identifier[mSupplyDispenseId].value` | 1..1 | Contains the unique dispense identifier assigned by mSupply. The value must be present for every dispense record. |
| `status` | 1..1 Must Support | Records the current status of the dispensing event, such as preparation, completion, cancellation, or entry in error. The value must conform to the FHIR`MedicationDispense.status`value set. |
| `medication[x]` | 1..1 Must Support | Identifies the medication supplied. Exactly one representation must be provided:`medicationCodeableConcept`or`medicationReference`. |
| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. It is bound to[Medication Value Set](ValueSet-fiji-med-vs.md)with preferred binding strength. Implementations should use codes from this ValueSet where appropriate. |
| `medicationReference` | Choice option; Must Support | References a`FijiMedication`resource containing details of the medication supplied. This is an alternative to the coded concept representation. |
| `subject` | 1..1 Must Support | Identifies the patient who received the medication. The reference must target`FijiPatient`. |
| `context` | Base cardinality; Must Support | Optionally links the dispense to the healthcare encounter associated with the dispensing event. When present, the reference must target`FijiEncounter`. In FHIR R4, this element is named`context`. |
| `performer` | 1..* Must Support | Identifies the individual or organization involved in dispensing the medication. At least one performer is required. |
| `performer.actor` | 1..1 Must Support | Identifies the practitioner, practitioner role, or organization responsible for the dispensing activity. This element is mandatory within each performer entry. |
| `authorizingPrescription` | 1..* Must Support | References the medication request or requests authorizing the dispensing event. At least one reference is required, and each reference must target`FijiMedicationRequest`. |
| `quantity` | 1..1 Must Support | Records the amount of medication supplied. This is mandatory and should include an appropriate numerical value and unit. |
| `daysSupply` | Base cardinality; Must Support | Records the period of supply provided by the dispense, when known. It may be used to indicate the number of days for which the supplied medication is expected to last. |
| `whenHandedOver` | 1..1 Must Support | Records the date and time when the medication was handed to the patient or their representative. This element is mandatory. |
| `whenPrepared` | Base cardinality; Must Support | Records the date and time when the medication was prepared for dispensing, where applicable. |
| `location` | Base cardinality; target constrained | Optionally identifies the physical location where the medication was supplied or dispensed. When present, the reference must target`FijiLocation`. |
| `dosageInstruction` | Base cardinality; Must Support | Provides dosage instructions associated with the dispensed medication. This can include structured dosage information and directions for use. |
| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions, suitable for display to patients and healthcare professionals. It is not mandatory under this profile. |
**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their cardinalities are inherited from FHIR R4 `MedicationDispense`.### Identifier RequirementsEvery `FijiMedicationDispense` resource must contain at least one identifier. The profile requires a specific identifier slice for the mSupply dispensing system.
| | |
| :--- | :--- |
| Identifier system | `http://fhir.health.gov.fj/identifier/msupply-dispense` |
| Identifier value | Mandatory; contains the mSupply dispense identifier |
| Identifier slice | `mSupplyDispenseId` |
| Slice cardinality | Exactly one identifier |
| Slicing discriminator | `system`, using value-based slicing |
| Slicing rules | Open; additional identifiers using other systems are permitted |
The open slicing rule allows additional identifiers to be recorded alongside the mandatory mSupply identifier. This supports interoperability with other dispensing systems, local identifiers, and external workflows without compromising the requirement for mSupply traceability.### Medication IdentificationThe `medication[x]` element is mandatory and supports two alternative representations:1. **Coded medication:**Use`medicationCodeableConcept`to identify the supplied medication directly using a coded concept. The[Medication Value Set](ValueSet-fiji-med-vs.md)provides the preferred terminology.
1. **Medication resource reference:**Use`medicationReference`to reference a`FijiMedication`resource containing the medication details.
Exactly one of these alternatives must be populated. The preferred ValueSet binding encourages consistent medication coding while allowing other appropriate codes when necessary.### Prescription and Dispensing PerformerThe `authorizingPrescription` element links the dispensing event to the medication request that authorized it. The profile requires at least one reference, and each reference must target a `FijiMedicationRequest` resource.The `performer` element identifies those responsible for dispensing the medication. At least one performer must be recorded, and each performer entry must contain an `actor`. The permitted reference targets are:* `FijiPractitioner`
* `FijiPractitionerRole`
* `FijiOrganization`
This supports representation of an individual dispensing practitioner, a practitioner acting in a defined role, or an organization responsible for the dispensing activity.### Quantity and HandoverThe `quantity` element is mandatory and records the amount of medication supplied. Implementations should use appropriate units and represent the quantity consistently with the medication's pharmaceutical form.The `whenHandedOver` element is mandatory and records when the medication was handed to the patient or their representative. It is distinct from `whenPrepared`, which records the preparation date and time where that information is available.The optional `daysSupply` element can be used to indicate the expected duration of the dispensed supply.### Dosage InstructionsThe profile marks both `dosageInstruction` and `dosageInstruction.text` as Must Support. The text element provides a human-readable description of the directions for using the dispensed medication.Where a dispense fulfils a prescription, the dosage instructions should be consistent with the associated `FijiMedicationRequest`, unless a clinically authorized change has occurred. The dispense may record the instructions supplied to the patient, which can help preserve the directions associated with the actual supply.Neither `dosageInstruction` nor `dosageInstruction.text` is made mandatory by the profile.### Referenced Fiji Profiles
| | |
| :--- | :--- |
| `FijiPatient` | Identifies the patient receiving the medication. |
| `FijiEncounter` | Identifies the healthcare encounter associated with the dispensing event. |
| `FijiPractitioner` | Identifies an individual practitioner involved in dispensing. |
| `FijiPractitionerRole` | Identifies a practitioner's role in a healthcare organization or service. |
| `FijiOrganization` | Identifies an organization responsible for dispensing. |
| `FijiLocation` | Identifies the physical location associated with dispensing. |
| `FijiMedication` | Represents the medication supplied. |
| `FijiMedicationRequest` | Represents the medication request authorizing the dispense. |
### Must Support InterpretationElements marked Must Support indicate that implementations claiming conformance to this profile are expected to support those elements according to the implementation guide's conformance requirements.Must Support does not, by itself, make an element mandatory or require it to be populated in every resource instance. Mandatory presence is determined by cardinality, such as `1..1` or `1..*`.For this profile, mandatory elements include the identifier and mSupply identifier slice, `status`, `medication[x]`, `subject`, `performer`, `performer.actor`, `authorizingPrescription`, `quantity`, and `whenHandedOver`. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.### Alignment with Regional IGsThe following specifications have been reviewed in the development of this profile:* **Australian AU Base Implementation Guide 6.0.0** — reviewed as a regional reference for FHIR conformance expectations, resource representation, and interoperability practices.
* **JPC Medication Dispense profile** - reviewed for conformance with current practice and legacy data handling The Fiji Medication Dispense profile builds on the FHIR R4 `MedicationDispense` resource while introducing a mandatory mSupply dispense identifier, Fiji-specific reference constraints, and a preferred medication terminology binding. These adaptations support local medication dispensing workflows and traceability requirements while maintaining alignment with regional FHIR implementation practices.
 |
| [Fiji Medication Placeholder](StructureDefinition-fiji-medication.md) | This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. The Medication resource allows for medications to be characterized by the form of the drug and the ingredient (or ingredients), as well as how it is packaged. The medication will include the ingredient(s) and their strength(s) and the package can include the amount (for example, number of tablets, volume, etc.) that is contained in a particular container (for example, 100 capsules of Amoxicillin 500mg per bottle). |
| [Fiji Medication Request](StructureDefinition-fiji-medication-request.md) | ### Fiji Medication Request Profile DescriptionThe Fiji Medication Request profile defines minimum expectations for recording, searching, and retrieving medication requests associated with a patient in Fiji healthcare settings. It is based on the FHIR R4 `MedicationRequest` resource and supports the representation of prescriptions, medication orders, and associated clinical information.The profile references Fiji-specific patient, encounter, practitioner, practitioner role, organization, medication, condition, and observation profiles to promote consistent representation and interoperability across Fiji healthcare systems.A medication request records the details of a medication that is requested or prescribed for a patient, including the medication, the status and intent of the request, the requester, the date the request was authored, and any associated clinical reasons and dosage instructions.### Scope and UsageThis profile is intended for use when recording medication requests in Fiji healthcare information systems. It supports:* Recording the status and intent of a medication request.
* Identifying the medication using a coded concept or a reference to a Fiji Medication resource.
* Linking the request to the patient and, where applicable, the encounter.
* Identifying the practitioner, practitioner role, or organization responsible for the request.
* Recording clinical reasons for the medication request using codes or references to relevant clinical resources.
* Supporting dosage instructions, including a human-readable description of how the medication should be taken or administered.
The profile establishes minimum conformance expectations for the key elements required to exchange medication request information. Implementers may populate additional elements permitted by the base FHIR resource where required by local workflows.### Key ElementsThe following table describes the important, mandatory, and Must Support elements defined by this profile.
| | | |
| :--- | :--- | :--- |
| `status` | 1..1 Must Support | The current state of the medication request, such as active, completed, cancelled, or entered in error. This element is mandatory and must be supported by implementations. The value must conform to the FHIR`MedicationRequest.status`value set. |
| `intent` | 1..1 Must Support | The intent of the request, such as order, proposal, or plan. This element is mandatory and must be supported by implementations. The value must conform to the FHIR`MedicationRequest.intent`value set. |
| `medication[x]` | 1..1 Must Support | Identifies the medication being requested. Exactly one medication representation must be provided: either`medicationCodeableConcept`or`medicationReference`. Both representations are marked Must Support, allowing implementations to support coded medication identification and references to structured medication resources. |
| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. The element is bound to the[Medication Value Set](ValueSet-fiji-med-vs.md)with**preferred**binding strength. Implementations should use codes from this ValueSet where appropriate. The preferred binding does not prohibit other codes when necessary. |
| `medicationReference` | Choice option; Must Support | References a`FijiMedication`resource that describes the medication being requested. The reference must target the Fiji Medication profile. This option is an alternative to`medicationCodeableConcept`; both must not be populated simultaneously. |
| `subject` | Base cardinality; Must Support not explicitly declared | Identifies the patient for whom the medication is requested. When present, the reference must target`FijiPatient`. The base FHIR cardinality is retained, so this element is not made mandatory by this profile. |
| `encounter` | Base cardinality; Must Support not explicitly declared | Links the medication request to the healthcare encounter during which it was initiated or is being managed. When present, the reference must target`FijiEncounter`. The element remains optional. |
| `authoredOn` | 1..1 Must Support | Records the date and time when the medication request was initially authored. This is mandatory and supports the chronological interpretation of the prescription or order. |
| `requester` | 1..1 Must Support | Identifies the individual or organization responsible for the medication request. This element is mandatory. The reference must target a`FijiPractitioner`,`FijiPractitionerRole`, or`FijiOrganization`resource. |
| `reasonCode` | Base cardinality; Must Support | Records the clinical reason for the medication request using one or more coded concepts. The element is bound to[Medication Request Reason Value Set](ValueSet-fiji-medication-request-reason-vs.md)with**preferred**binding strength. Implementations should use codes from this ValueSet where appropriate. |
| `reasonReference` | Base cardinality; Must Support | References clinical information supporting the reason for the medication request. Permitted targets are`FijiCondition`,`FijiPathologyObservation`, and`FijiDiagnosticObservation`. This enables the request to be linked to a recorded condition or relevant clinical finding. |
| `dosageInstruction` | Base cardinality; Must Support | Provides instructions describing how the medication is to be used or administered. This element may contain structured dosage information, timing, route, dose, and other details supported by the base FHIR resource. |
| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions. This is useful for clinical review and for displaying instructions to patients and healthcare professionals. It is not mandatory under this profile. |
**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their actual cardinality is inherited from FHIR R4 `MedicationRequest`.### Medication IdentificationThe `medication[x]` element is mandatory and supports two alternative representations:1. **Coded medication:**Use`medicationCodeableConcept`to identify the medication directly by a code and, where appropriate, display text. The[Medication Value Set](ValueSet-fiji-med-vs.md)provides the preferred terminology for medication identification.
1. **Medication resource reference:**Use`medicationReference`to reference a`FijiMedication`resource containing the medication details.
Exactly one of these alternatives must be populated. The choice allows systems to exchange medication requests using either a directly coded medication or a separately maintained medication resource.The preferred binding to `FijiMedVS` encourages consistent medication coding across Fiji implementations while allowing alternative codes where necessary.### Clinical Reason and Dosage InstructionsThe profile supports the recording of clinical reasons for a medication request through `reasonCode` and `reasonReference`.* `reasonCode` supports direct coding of the clinical reason using the preferred [Medication Request Reason Value Set](ValueSet-fiji-medication-request-reason-vs.md) .
* `reasonReference` supports links to a condition or clinical observation that provides evidence or context for the request.
Both elements are optional and marked Must Support. Implementations should support both coded and reference-based representations as appropriate to their workflows.The `dosageInstruction` element supports instructions for medication use. Its `text` sub-element provides a human-readable representation that can be displayed in clinical applications and used to communicate medication directions. Both elements are marked Must Support but are not made mandatory by this profile.### Referenced Fiji ProfilesWhere the profile restricts references to Fiji-specific resources, the target resources are:
| | |
| :--- | :--- |
| `FijiPatient` | Identifies the patient receiving the medication. |
| `FijiEncounter` | Identifies the healthcare encounter associated with the medication request. |
| `FijiPractitioner` | Identifies an individual healthcare practitioner responsible for the request. |
| `FijiPractitionerRole` | Identifies a practitioner's role within a healthcare organization or service. |
| `FijiOrganization` | Identifies an organization responsible for the medication request. |
| `FijiMedication` | Represents the medication being requested. |
| `FijiCondition` | Represents a condition that may explain or support the medication request. |
| `FijiPathologyObservation` | Represents a pathology-related observation that may support the clinical reason. |
| `FijiDiagnosticObservation` | Represents a diagnostic observation that may support the clinical reason. |
### Must Support InterpretationElements marked Must Support indicate that implementations claiming conformance to this profile are expected to support the element according to the implementation guide's conformance requirements.Must Support does not, by itself, make an element mandatory or require that it be present in every resource instance. Mandatory presence is determined by cardinality, such as `1..1`.For this profile, `status`, `intent`, `medication[x]`, `authoredOn`, and `requester` are mandatory and Must Support. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.### Alignment with Regional IGsThe following specifications have been reviewed in the development of this profile:* **Australian AU Core Implementation Guide 2.0.0** — reviewed as a regional reference for medication request representation, FHIR conformance expectations, and interoperability practices.
The Fiji Medication Request profile builds on the FHIR R4 `MedicationRequest` resource while introducing Fiji-specific reference constraints and preferred terminology bindings. These adaptations support local healthcare requirements while maintaining alignment with regional FHIR implementation practices. |
| [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md) | ### Fiji Pathology Observation ProfileThe **Fiji Pathology Observation** profile represents a laboratory or pathology result associated with a patient. It is based on the FHIR `Observation` resource and is intended to support the exchange of individual pathology results as well as groups of related results, such as lipid panels, full blood counts, and blood gas analyses.A pathology observation identifies the test performed, the patient, the timing of the observation, and the resulting value. It may also provide information about the specimen, performer, interpretation, reference range, and relationships to other pathology observations.The profile supports two approaches for grouping related results:* **`hasMember`** — used to link a panel or other higher-level observation to independently represented member observations.
* **`component`** — used when multiple values are intrinsically part of a single observation and are represented within the same resource.
### Key Elements
| | | | |
| :--- | :--- | :--- | :--- |
| `status` | 1..1 | Yes | Indicates the status of the pathology result, such as preliminary, final, amended, or corrected. |
| `category` | 1..* | Yes | Classifies the observation. For pathology results, the laboratory category should normally be used. Values are drawn from the observation category ValueSet. |
| `subject` | 1..1 | Yes | Identifies the patient to whom the pathology result relates. In this profile, the reference is restricted to`FijiPatient`. |
| `code` | 1..1 | Yes | Identifies the pathology test or observation being reported, such as haemoglobin, glucose, cholesterol, or arterial oxygen partial pressure. Values should preferably use the`ObsVS`ValueSet. |
| `effective[x]` | 1..1 | Yes | Records the clinically relevant time or period for the observation, such as the time a specimen was collected or the measurement was performed. |
| `encounter` | 0..1 | Yes | Identifies the healthcare encounter associated with the observation. |
| `performer` | 0..* | Yes | Identifies the person, practitioner, practitioner role, or organization responsible for the observation or result. |
| `value[x]` | 0..1 | Yes | Contains the actual pathology result, such as a quantity, coded concept, string, or other appropriate FHIR data type. |
| `dataAbsentReason` | 0..1 | Yes | Provides a reason when an expected result value is not available. |
| `interpretation` | 0..* | Yes | Provides an interpretation of the result, such as high, low, normal, or abnormal. |
| `specimen` | 0..1 | Yes | Identifies the specimen from which the pathology result was obtained, such as serum, plasma, or arterial blood. |
| `referenceRange` | 0..* | Yes | Provides the reference range against which the result can be interpreted. |
| `hasMember` | 0..* | Yes | Links the observation to other independently represented pathology observations. This is particularly useful for pathology panels. References are restricted to`FijiPathologyObservation`. |
| `component` | 0..* | Yes | Represents additional measurements that are part of the same observation. |
| `component.code` | 1..1 | Yes | Identifies the type of component observation. Values should preferably use the`ObsVS`ValueSet. |
| `component.value[x]` | 0..1 | Yes | Contains the value of the component observation. |
| `component.dataAbsentReason` | 0..1 | Yes | Provides a reason when a component result is not available. |
### TerminologyThe following terminology bindings are defined by this profile:
| | | |
| :--- | :--- | :--- |
| `category` | [ObservationCategoryCodes HL7](http://hl7.org/fhir/ValueSet/observation-category) | Preferred |
| `code` | [LOINC codes](http://loinc.org) | Preferred |
| `dataAbsentReason` | [DataAbsentReason HL7](https://hl7.org/fhir/R4/valueset-data-absent-reason.html) | Extensible |
| `interpretation` | [ObservationInterpretation HL7](https://hl7.org/fhir/R4/valueset-observation-interpretation.html) | Extensible |
| `component.code` | [LOINC codes](http://loinc.org) | Preferred |
Where an appropriate terminology exists, coded pathology observations should use internationally recognized terminology such as **LOINC** for laboratory tests and **SNOMED CT** where appropriate. Results expressed as quantities should use UCUM for units of measure.### Pathology PanelsA pathology panel may be represented as a higher-level `FijiPathologyObservation` with `hasMember` references to the individual results.For example, a lipid panel could be represented as:```
FijiPathologyObservation
  code: Lipid panel
  hasMember:
    - Total cholesterol
    - HDL cholesterol
    - LDL cholesterol
    - Triglycerides

```
Each member is itself a `FijiPathologyObservation` and can contain its own result, interpretation, reference range, and specimen.This approach allows individual pathology results to be independently referenced and exchanged while retaining their relationship to the overall panel.### Components`component` should be used when multiple measurements form part of a **single observation** rather than being independently represented results.For example, an observation representing a blood pressure measurement can contain systolic and diastolic blood pressure as components. In contrast, a laboratory panel such as a lipid panel is generally better represented using `hasMember`, with each analyte represented as a separate observation. |
| [Fiji Patient](StructureDefinition-fiji-patient.md) | ### Fiji Patient ProfileThe `FijiPatient` profile defines the representation of a patient in Fiji healthcare information systems. It builds on the FHIR `Patient` resource and establishes requirements and guidance for recording patient identity, names, demographic information, administrative geography, cultural affiliation, and other relevant personal characteristics.The profile supports consistent patient identification across healthcare settings through a mandatory national health number, while allowing additional identifiers such as national identification numbers and facility-specific medical record numbers.It also supports Fiji-specific naming conventions through `FijiHumanName`, administrative zone information through `FijiAdminZone`, and iTaukei cultural and genealogical affiliation through `FijiITaukeiAffiliation`. Additional extensions support nationality, religious affiliation, occupation, and ethnicity.The profile encourages the use of Fiji-specific resource profiles where available, while retaining compatibility with standard FHIR resources.### Scope and Usage`FijiPatient` is intended to represent a person receiving or having received healthcare services within the scope of the Fiji Implementation Guide.It supports:* Identification of patients using a mandatory national health number and other applicable identifiers.
* Recording of official and usual names, including culturally appropriate naming conventions.
* Representation of health administration zones relevant to the patient's care.
* Recording of iTaukei cultural and genealogical affiliations when applicable.
* Recording of nationality, religious affiliation, occupation, and ethnicity where known and appropriate.
* Recording of basic demographic information, including gender and date of birth.
* Recording of patient addresses, languages, healthcare providers, and managing organizations.
* Linking to other records concerning the same person, including related persons.
Optional demographic and cultural information should be recorded only when available, relevant, and appropriate for the intended healthcare purpose.### Key Elements
| | | |
| :--- | :--- | :--- |
| `identifier` | 1..* | Identifiers assigned to the patient. At least one identifier is required. Each identifier must have a`system`and`value`. Additional identifiers may include national identification numbers and medical record numbers. |
| `identifier[nationalHealthNumber]` | 1..1 | Mandatory national health number. The identifier system must be`http://fhir.health.gov.fj/identifier/national-health-number`. The identifier value must be present. |
| `name` | 1..* | Patient names represented using`FijiHumanName`. At least one name is required. Implementations should distinguish official names from usual or preferred names according to the naming conventions supported by the profile. |
| `extension[iTaukei]` | 0..1 | References`FijiITaukeiAffiliation`, which supports iTaukei cultural and genealogical affiliation, including yasana (province), tikina, korodine (village), yavusa, mataqali, and tokatoka (family). This extension is optional at the profile level and is relevant to patients for whom the information applies. |
| `extension[nationality]` | 0..1 | Records the patient's nationality using the patient-nationality extension. The nationality code is drawn from the ISO country value set, with a required binding. The extension's`code`subextension carries the coded value. |
| `extension[religion]` | 0..1 | Records the patient's religious affiliation using the patient-religion extension. The terminology binding is extensible and is based on the HL7 ReligiousAffiliation value set. |
| `extension[occupation]` | 0..1 | Records the patient's occupation using`FijiPatientOccupation`. The extension is marked as Must Support. A definitive value set is yet to be specified. |
| `extension[ethnicity]` | 0..1 | Records the patient's ethnicity using`FijiPatientEthnicity`. The extension is marked as Must Support. A definitive value set is yet to be specified. |
| `gender` | 0..1 | Records the patient's administrative gender where known. Must Support. |
| `birthDate` | 0..1 | Records the patient's date of birth where known. Must Support. The date may be identified as estimated using the`BirthDateEstimatedIndicator`extension. |
| `address` | 0..* | Patient addresses represented using`FijiAddress`. Multiple addresses may be recorded where applicable. |
| `generalPractitioner[practitioner]` | 0..* | References practitioners responsible for the patient's care. References may target`FijiPractitioner`or the standard`Practitioner`resource. Fiji-specific profiles are preferred where available. |
| `generalPractitioner[role]` | 0..* | References practitioner roles responsible for the patient's care. References may target`FijiPractitionerRole`or the standard`PractitionerRole`resource. Fiji-specific profiles are preferred where available. |
| `managingOrganization` | 0..1 | References the organization responsible for the patient. May target`FijiOrganization`or the standard`Organization`resource. Fiji-specific profiles are preferred where available. |
| `communication` | 0..* | Records languages the patient can use for communication. |
| `link.other` | 1..1 per link | References another record concerning the same person, using`FijiPatient`or`FijiRelatedPerson`. The cardinality of`link`itself is inherited from the base`Patient`resource. |
### Fiji-Specific Links and Extensions#### Health Administration ZoneThe `Fiji Health Administration Zone` indicates the administrative geography relevant to the patient's healthcare. It supports:* Division
* Subdivision
* Medical area
* Nursing zone
These zones are created as a hierarchy of Organization resources. The Patient is linked to these administrative zones by a managingOrganization reference to the relevant Nursing Zone Organization. The higher level zones can be derived from inspecting this using the partOf element the references the next level.#### iTaukei AffiliationThe `FijiITaukeiAffiliation` extension represents culturally and genealogically relevant iTaukei affiliation. It supports coded values for:* Yasana (province)
* Tikina
* Korodine (village)
* Yavusa
* Mataqali
* Tokatoka (family)
The extension provides a structured representation of affiliation rather than relying on free-text descriptions. The individual values should be populated when known and appropriate, without assuming that all levels of affiliation will be available for every patient.The extension is optional in the `FijiPatient` profile. Its use should respect patient preferences, applicable governance requirements, and the intended purpose of collecting the information.#### NationalityThe patient-nationality extension records the patient's nationality using a coded country value. The profile requires the extension's `code` subextension to use the ISO country value set.Nationality should be distinguished from citizenship, place of birth, ethnicity, and current residence, as these concepts are not necessarily equivalent.#### Religious AffiliationThe patient-religion extension records the patient's religious affiliation. Its terminology is based on the HL7 ReligiousAffiliation value set with an extensible binding.Religious affiliation is optional and should be recorded where appropriate to the care context and the patient's expressed information.#### OccupationThe `FijiPatientOccupation` extension records the patient's occupation. The extension is optional but is designated Must Support.A definitive value set is yet to be specified. Implementations should follow the terminology guidance established by the Fiji Implementation Guide when available.#### EthnicityThe `FijiPatientEthnicity` extension records the patient's ethnicity. The extension is optional but is designated Must Support.A definitive value set is yet to be specified. Implementations should use the terminology guidance established by the Fiji Implementation Guide when available.### Naming RequirementsAll patient names must conform to `FijiHumanName`. At least one name must be recorded.The profile includes the following invariant:`pac-pat-1`: At least one name must have `use = usual` or `use = official`.This invariant has warning severity. It encourages implementations to identify either a usual name for everyday use and display, or an official name for formal identification, without making either specific name-use category an unconditional validation requirement.Where both names are available, implementations should preserve their distinct purposes. The usual name is generally appropriate for routine display, while the official name supports formal identification and medico-legal processes.### Patient IdentificationThe profile requires at least one patient identifier and mandates exactly one identifier slice for the national health number.The national health number identifier must use the following system URI:`http://fhir.health.gov.fj/identifier/national-health-number`The identifier's value is mandatory. Other identifiers may be recorded using their appropriate identifier systems, including national identification numbers and facility-specific medical record numbers.Identifiers should be preserved with their assigning system so that values originating from different identifier namespaces are not incorrectly treated as equivalent.### Demographic InformationThe profile supports the recording of gender and date of birth, with both elements marked Must Support.Date of birth may be uncertain or estimated. Where an estimated date of birth is recorded, the `BirthDateEstimatedIndicator` extension can indicate that the date is estimated rather than confirmed.Addresses must conform to `FijiAddress`, allowing address information to follow the Fiji-specific representation defined by the Implementation Guide.Patient languages are recorded through `communication`, supporting appropriate communication and continuity of care.### Care Providers and Organizational ResponsibilityThe `generalPractitioner` element supports references to practitioners and practitioner roles. The profile distinguishes these reference types through slicing:* `generalPractitioner[practitioner]` references a `FijiPractitioner` or standard `Practitioner`.
* `generalPractitioner[role]` references a `FijiPractitionerRole` or standard `PractitionerRole`.
The `managingOrganization` element identifies the Administrative Zone organizational unit (Division, Subdivision, Medical Area or Nursing Zone) responsible for the patient and should reference a `FijiAdministrativeZone`.Implementations should prefer Fiji-specific profiles where available, while permitting standard FHIR resources for interoperability.### Must Support and Conformance NotesElements marked Must Support indicate that implementations are expected to support the element in accordance with the Implementation Guide's conformance expectations. Must Support does not, by itself, mean that the element must contain a value in every instance.The following elements are explicitly marked Must Support in the supplied profile:* National health number identifier system and value
* Gender
* Date of birth
* Estimated date-of-birth indicator extension
* Occupation extension
* Ethnicity extension
The profile also defines mandatory cardinalities for identifiers, identifier system and value, the national health number slice, and patient names. These cardinality requirements must be distinguished from Must Support expectations.### Implementation Considerations1. **Patient identity:**Ensure that the mandatory national health number is recorded using the prescribed identifier system URI.
1. **Name handling:**Use`FijiHumanName`and distinguish official and usual names where the information is available.
1. **Administrative geography:**Reference`FijiAdministrativeZone`in managingOrganization for healthcare administration and service geography.
1. **Cultural affiliation:**Use`FijiITaukeiAffiliation`for relevant iTaukei cultural and genealogical information, without substituting administrative geography for traditional affiliation.
1. **Terminology:**Apply the required ISO country value set for nationality and the specified extensible terminology binding for religious affiliation.
1. **Terminology development:**Complete the occupation and ethnicity value set definitions before imposing more specific terminology conformance requirements.
1. **Data quality:**Represent estimated dates of birth explicitly and preserve identifier systems.
1. **Interoperability:**Prefer Fiji-specific profiles for practitioners, practitioner roles, organizations, addresses, and related persons when available, while maintaining compatibility with standard FHIR resources.
1. **Privacy and appropriate use:**Collect and disclose cultural, religious, and other personal information in accordance with applicable privacy, governance, and healthcare requirements.
### Related Profiles and Extensions
| | |
| :--- | :--- |
| `FijiHumanName` | Fiji-specific patient name representation |
| `FijiAddress` | Fiji-specific address representation |
| `FijiITaukeiAffiliation` | iTaukei cultural and genealogical affiliation |
| Patient-nationality extension | Patient nationality using coded country values |
| Patient-religion extension | Patient religious affiliation |
| `FijiPatientOccupation` | Patient occupation |
| `FijiPatientEthnicity` | Patient ethnicity |
| `BirthDateEstimatedIndicator` | Indicates an estimated date of birth |
| `FijiPractitioner` | Fiji-specific practitioner representation |
| `FijiPractitionerRole` | Fiji-specific practitioner role representation |
| `FijiOrganization` | Fiji-specific organization representation |
| `FijiRelatedPerson` | Fiji-specific related-person representation |
 |
| [Fiji Practitioner](StructureDefinition-fiji-practitioner.md) | ### Fiji Practitioner ProfileThe **Fiji Practitioner** profile represents a healthcare practitioner involved in the delivery of healthcare services within Fiji. It supports culturally appropriate naming conventions while preserving the regulatory and medico-legal identity requirements necessary for clinical documentation, healthcare information exchange (HIE), and practitioner identification.The profile uses the FHIR `Practitioner` resource and supports professional identifiers, registered and commonly used names, contact information, professional qualifications, and languages used by the practitioner. An optional iTaukei affiliation extension supports culturally appropriate representation of clan affiliation where applicable.At least one professional identifier and exactly one official name are required. A usual name may be recorded when the practitioner is commonly known by a different name in clinical or community settings.### Key elements
| | | | |
| :--- | :--- | :--- | :--- |
| `identifier` | `1..*` | Must contain at least one identifier. | Professional registration, licensing, or other identifiers used to identify the practitioner. |
| `identifier[medicalRegistrationNumber]` | `0..1` | Uses the system`http://fhir.health.gov.fj/identifier/practitioner-medical-registration`; when present,`system`and`value`are required. | Medical registration number issued by the relevant professional registration authority. |
| `name` | `1..*` | Uses`FijiHumanName`; sliced by`use`. | Names associated with the practitioner, supporting Fiji-specific naming conventions. |
| `name[official]` | `1..1` | `use = official`. | The practitioner's registered or licensed name, supporting reliable medico-legal identification. |
| `name[usual]` | `0..1` | `use = usual`. | The name commonly used in clinical practice or community interactions, where different from the official name. |
| `extension[iTaukei]` | `0..1` | Uses`FijiITaukeiAffiliation`. | Optional iTaukei affiliation information, where applicable and appropriate to record. |
| `telecom` | `0..*` | Must contain valid contact details when populated. | Professional telephone numbers, email addresses, or other contact channels. |
| `address` | `0..*` | Uses`FijiAddress`. | Practice or correspondence addresses. |
| `gender` | `0..1` | Must use the FHIR administrative gender value set. | Administrative gender, where recorded. |
| `qualification` | `0..*` | `qualification.code`is`1..1`for each qualification. | Professional qualifications, certifications, or credentials held by the practitioner. |
| `communication` | `0..*` | No mandatory language has been specified by this profile. | Languages the practitioner can use to communicate with patients and other healthcare professionals. |
### Implementation guidance* **Professional identity:** Implementations should use the medical registration identifier when one is available. The profile currently permits other identifiers and does not require the medical registration slice to be populated.
* **Name handling:** The official name should reflect the practitioner's registered or licensed identity. The usual name supports respectful, culturally appropriate communication without replacing the official name.
* **Cultural affiliation:** Record the iTaukei affiliation extension only where applicable and appropriate. It is optional and should not be used as a substitute for practitioner identity or professional registration.
* **Qualifications:** Record each qualification separately, using an appropriate coded qualification where available. A Fiji-specific qualification value set may be introduced in a future version.
* **Communication:** Record the languages the practitioner can use to support appropriate patient communication and care coordination. A minimum communication language is not currently required.
* **Contact information:** Use `telecom` and `address` for professional contact details and practice or correspondence locations, subject to applicable privacy and data governance requirements.
### Scope and future considerationsThe following items are identified for future development and are not mandatory constraints in the current profile:* Require at least one medical or other professional registration identifier through a dedicated identifier slice.
* Bind `qualification.code` to an appropriate Fiji-specific value set.
* Require at least one practitioner communication language.
* Consider a dedicated `displayName` extension if a consistent preferred-name display mechanism is needed across electronic health record systems and HIE services.
This profile is intended to provide a consistent representation of healthcare practitioners across Fiji's healthcare systems while supporting professional accountability, interoperability, and culturally appropriate care. |
| [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md) | Defines the functional, organisational, and regulatory role of a Fiji Practitioner.Requires future development for next version of the IG.Supports multiple roles per practitioner (e.g., GP, hospital consultant, outreach clinician). Intended for use in Fiji regional health systems and future HIE environments. |
| [Fiji Specimen](StructureDefinition-fiji-specimen.md) | Profile of Specimen for use in Fiji health information systems. This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. |
| [Head circumference Vitals - Fiji](StructureDefinition-fiji-vital-head-circumference.md) | This profile defines the requirements and usage of an Observation resource recording Head Circumference. It is based on the FHIR Head Circumference Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 9843-4
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Body Height was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the Body Height did not change
 
* valueQuantity - the Body Height value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'cm'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Body Height measurement took place
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md) | This profile defines the requirements and usage of an Observation resource recording Heart Rate vital observations. It is based on the FHIR Heart Rate Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 8867-4
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Heart Rate was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
 
* valueQuantity - the Heart Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'/min'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Heart Rate measurement took place
* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md) | This profile defines the requirements and usage of an Observation resource recording Body Height vital observations. It is based on the FHIR Body Height Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 8302-2
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Body Height was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the Body Height did not change
 
* valueQuantity - the Body Height value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'cm'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Body Height measurement took place
* interpretation - a coded concept providing interpretation for the value
* device - reference to the specific device used to measure
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* note - any additional relevant information to be recorded
 |
| [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md) | This profile defines the requirements and usage of an Observation resource recording Oxygen Saturation vital observations. It is based on the FHIR Oxygen Saturation Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 2708-6
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Oxygen Saturation was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
 
* valueQuantity - the Oxygen Saturation value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'%'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Oxygen Saturation measurement took place
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md) | This profile defines the requirements and usage of an Observation resource recording Respiratory Rate vital observations. It is based on the FHIR Respiratory Rate Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 9279-1
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Respiratory Rate was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
 
* valueQuantity - the Respiratory Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'/min'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Respiratory Rate measurement took place
* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement
* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement
* interpretation - a coded concept providing interpretation for the value
* note - any additional relevant information to be recorded
 |
| [Weight Vitals - Fiji](StructureDefinition-fiji-vital-weight.md) | This profile defines the requirements and usage of an Observation resource recording Body Weight vital observations. It is based on the FHIR Body Weight Profile and adapted as required for the Fiji Core Implementation Guide.### Mandatory elementsThe following elements must be recorded:*  

| | | | |
| :--- | :--- | :--- | :--- |
| status - one of the following codes (registered | preliminary | final | amended +) |

 
* code.coding.system - must be http ://loinc.org
* code.coding.code - must be 29463-7
* category must have at miniumu one element conforming to following: 
* category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category
* category.coding.code - vital-signs
 
* subject - a reference to a Fiji Patient
* effective[x] - the date/time when the Body Weight was measured using one of the values below 
* effectiveDateTime (recommended for use where possible)
* effectivePeriod - this is a time period with specific start/end over which the Body Weight did not change
 
* valueQuantity - the Body Weight value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code) 
* valueQuantity.value - One numeric value
* valueQuantity.system - "http://unitsofmeasure.org"
* valueQuantity.code - the UCUM unit code **'kg'**
 
### Other elements defined* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)
* encounter - a reference to an encounter where/when the Body Weight measurement took place
* interpretation - a coded concept providing interpretation for the value
* device - reference to the specific device used to measure
* note - any additional relevant information to be recorded
 |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Fiji Address](StructureDefinition-fiji-address.md) | Address profile designed for Fiji addresses which may include descriptive and village-based rather than street-based locations.  This profile supports a range of address formats and general usage guidance. In all cases:* text is a mandatory field and should be considered the primary representation of the fully address.
* line is used for free text address lines and may relate to a landmark, school, church etc. in some cases combined with a village or settlement name - rather than a street address.
* Country supports international interoperability
* geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.
This is used by FijiPatient, FijiPractitioner, FijiLocation and FijiOrganization.Recommended mapping of address fields are below but should be validated and used with Fiji specific examples.
| | | |
| :--- | :--- | :--- |
| `text` | Full narrative address | (required) Often the primary address form |
| `line` | May include Landmark, compound or street | Free-text |
| `city` | Town | May be used for urban areas but also smaller centres |
| `district` | District | District, ward, or sub-provincial administrative area |
| `state` | Division | Province, division, or first-level administrative region |
| `extension:geolocation` | Geolocation coordinates | Lat/Long coordinates |
 |
| [Fiji HumanName](StructureDefinition-fiji-humanname.md) | A HumanName profile designed for representing Fiji names.This profile accommodates a range of naming practices including:* Absence of family names (e.g., in some cultures where individuals may have only given names)
* Patronymic or Matronymic structures
* Multiple given names
* Customary and ceremonial naming
* Distinction between 'usual' (social) and 'official' (legal) names
At least one FijiHumanName instance must exist on FijiPatient and FijiPractitioner resources. Systems SHALL NOT require both usual and official names.Note: iTaukei affiliation is recorded separately from the FijiHumanName as an extension of FijiPatient profile to capture important cultural identity information. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Birth Date Verified Indicator](StructureDefinition-birthdate-verified-indicator.md) | Indicates that the associated Patient.birthDate has been verified. Absence of this extension means no assertion is made about accuracy. |
| [Fiji Patient Ethnicity](StructureDefinition-fiji-patient-ethnicity.md) | Describes ethnicity of a Fiji Patient. This is based on the structure of the NZ FHIR Base extension for [NZ Ethnicity](http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity) but is separately defined so as to enable a national/regional valueset for ethnicity codes. |
| [Fiji Patient Occupation](StructureDefinition-fiji-patient-occupation.md) | Describes occupation of a Fiji Patient. This is based on the structure of the NZ FHIR Base extension for [ACC Patient Occupation](http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation) but is separately defined so as to enable a national/regional valueset for occupation codes. |
| [Fiji iTaukei Affiliation](StructureDefinition-fiji-iTaukei-affiliation.md) | Represents Fiji iTaukei affiliation. This is a demographic identity attribute. It is not a syntactic component of a name. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Allergy Causative Agent Value Set](ValueSet-fiji-allergy-agent-vs.md) | A subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances. |
| [Body Position Value Set](ValueSet-fiji-body-position-vs.md) | SELECT SNOMED CT code system values the position in which the individual was in during a measurement. |
| [Body Site Value Set](ValueSet-fiji-body-site-vs.md) | Valueset for bodysite/anatomical structures. Used for Condition.bodySite and Immunization.site Values from SNOMED CT anatomical structures. |
| [Body Weight Vital Value Set](ValueSet-fiji-vital-body-weight-vs.md) | Concepts representing options that provide further context for body weight coding. (eg. Birth Weight…) NOTE: This is not currently used but may be used in future when a full valueset has been developed |
| [Condition (Diagnosis) Value Set](ValueSet-fiji-condition-code-vs.md) | Condition Code valueset for Fiji Core. Includes "clinical finding" codes and codes for "situation with explicit content". |
| [Condition Evidence Value Set](ValueSet-fiji-evidence-vs.md) | Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases. |
| [Dicom Modality Value Set](ValueSet-fiji-dcm-modality-vs.md) | Imaging acquisition modalities based on DICOM CID 29. |
| [Encounter Reason Value Set](ValueSet-fiji-encounter-reason-vs.md) | Encounter reason valueset for Fiji Core. Proposed valueset is taken from SNOMED descendant of clinical findings and Procedures. |
| [Fiji Korodina Value Set](ValueSet-fiji-korodina.md) | The set of korodina codes recognised by the Fiji Implementation Guide. |
| [Fiji Mataqali Value Set](ValueSet-fiji-mataqali.md) | Mataqali codes recognised by the Fiji Implementation Guide. |
| [Fiji Observation Interpretation Value Set](ValueSet-fiji-obs-interpretation-vs.md) | Valueset for interpretations of Observations for Fiji. Used for interpretaton element for Observations and derived profiles (eg. Vital signs) Values from HL7 v3 Code System ObservationInterpretation with added values from WHO/Fiji usage. |
| [Fiji Patient Ethnicity Value Set](ValueSet-fiji-ethnicity.md) | Valueset of Patient Ethnicity in Fiji |
| [Fiji Patient Occupation Value Set](ValueSet-fiji-occupation.md) | Valueset of Patient Occupation in Fiji |
| [Fiji Tikina Value Set](ValueSet-fiji-tikina.md) | The set of tikina codes recognised by the Fiji Implementation Guide. |
| [Fiji Tokatoka Value Set](ValueSet-fiji-tokatoka.md) | Tokatoka codes recognised by the Fiji Implementation Guide. |
| [Fiji Yasana Value Set](ValueSet-fiji-yasana.md) | The set of yasana codes recognised by the Fiji Implementation Guide. |
| [Fiji Yavusa Value Set](ValueSet-fiji-yavusa.md) | The set of yavusa codes recognised by the Fiji Implementation Guide. |
| [Health Administrative Zones Value Set](ValueSet-fiji-admin-zones.md) | Valueset of Health administrative zones in Fiji |
| [Heart Rate LOINC Codes](ValueSet-heart-rate-loinc.md) | LOINC codes for heart rate measurements, spot or average. |
| [Imaging Report Value Set](ValueSet-fiji-imaging-report-vs.md) | Fiji imaging report including SNOMED CT concepts for radiology report and imaging report |
| [Immunization Status Reason Value Set](ValueSet-immunization-status-reason.md) | Status Reason codes for reason a vaccine was not administered. Initial codes used are ICD-11 codes from DAK. TODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen |
| [Immunization Value Set](ValueSet-imm-vs.md) | Immunization valueset based on until Fiji-Pacific valueset is developed |
| [Medication Request Reason Value Set](ValueSet-fiji-medication-request-reason-vs.md) | MedicationRequest reason valueset for Fiji Core. Proposed valueset is taken from SNOMED Problem/Diagnosis refsets. |
| [Medication Value Set](ValueSet-fiji-med-vs.md) | Fiji Medication valueset including support for legacy codes derived from Fiji MSupply instance. Provisionally SNOMED CT medication refset and ATC codes have also been added. |
| [Medication or Vaccine Route Value Set](ValueSet-fiji-medication-route-vs.md) | Valueset for medication and vaccine route. Used for Medications and Immunization.route Values are descendants from SNOMED CT Route of Administration concept. |
| [Observation Value Set](ValueSet-obs-vs.md) | Use all LOINC codes as temporary observation valueset until Fiji-Pacific valueset is developed |
| [Organization Role Value Set](ValueSet-fiji-organization-role-vs.md) | Valueset for Healthcare Organization Role Type. Values from SNOMED CT Hospital environment, Site of care, Outpatient environment, and Inpatient environment. |
| [Radiology Findings Value Set](ValueSet-fiji-radiology-findings-vs.md) | Fiji radiology findings including SNOMED CT concepts filtered for radiology and imaging findings used within an IPS context. |
| [Service Type Valueset](ValueSet-fiji-service-type-vs.md) | Service Type valueset for Fiji Core. Proposed valueset is taken from SNOMED Services codes. |
| [Vital Measurement Method Value Set](ValueSet-fiji-vital-method-vs.md) | SNOMED CT concepts representing methods used to obtain vital sign measurements, including body temperature, blood pressure, body height, body weight, heart rate, oxygen saturation and respiratory rate. This may be extended as required including with local codes used in historic data. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Ethnicity](CodeSystem-fiji-ethnicity.md) | Ethnicity as recorded by Fiji MHMS |
| [Fiji Korodina CodeSystem](CodeSystem-fiji-korodina.md) | A code system representing korodina (wards) in Fiji for use in healthcare information exchange.Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. |
| [Fiji MSupply Medication CodeSystem](CodeSystem-fiji-msupply.md) | A code system representing legacy MSupply medication codes used in Fiji, for use in healthcare information exchange with legacy medication dispense information and until a standardised codesystem for medications is agreed.Codes and display names should be sourced from the MSupply codes used in Fiji for dispensing medication. |
| [Fiji Mataqali CodeSystem](CodeSystem-fiji-mataqali.md) | A code system representing mataqali recognised in Fiji, for use in healthcare information exchange where identification of a mataqali is required.Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. |
| [Fiji Tikina CodeSystem](CodeSystem-fiji-tikina.md) | A code system representing the tikina (districts) of Fiji for use in healthcare information exchange.Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. |
| [Fiji Tokatoka CodeSystem](CodeSystem-fiji-tokatoka.md) | A code system representing tokatoka recognised in Fiji, for use in healthcare information exchange where identification of a tokatoka is required.Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. |
| [Fiji Yasana CodeSystem](CodeSystem-fiji-yasana.md) | A code system representing Yasana (province) largest administrative division codes in Fiji iTaukei society as recognised in Fiji,Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. |
| [Fiji Yavusa CodeSystem](CodeSystem-fiji-yavusa.md) | A code system representing Yavusa in Fiji for use in healthcare information exchange.Codes and display names should be sourced from the authoritative Fiji geographic administrative dataset adopted by the Fiji Implementation Guide. |
| [Health administrative zones in Fiji](CodeSystem-fiji-admin-zones.md) | Health administrative zones in Fiji |
| [Observation interpretation local codes in Fiji](CodeSystem-fiji-obs-interpretation-cs.md) | Observation Interpretation local codes in Fiji |
| [Patient Occupation](CodeSystem-fiji-occupation.md) | Patient Occumpation as recorded by Fiji MHMS |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Fiji Encounter Identifier](NamingSystem-FijiEncounterIdentifier.md) | NamingSystem for encounter identifiers for national systems in Fiji, using a simulated identifier system for demonstration purposes. |
| [Fiji MSupply Medication Dispense Identifier](NamingSystem-FijiMedicationDispenseIdentifier.md) | NamingSystem for Medication Dispense identifiers in Fiji |
| [Fiji National Patient Identifier](NamingSystem-FijiNationalPatientIdentifier.md) | NamingSystem for national patient identifiers in Fiji. Note: legacy data may use a different naming system: http://health.gov.fj/FHIR/national-health-number. |
| [Fiji Organization Identifier](NamingSystem-FijiOrganizationIdentifier.md) | NamingSystem for organization identifiers in Fiji, using a simulated national identifier system for demonstration purposes. |
| [Fiji Practitioner Medical Registration Number](NamingSystem-FijiPractitionerMedicalRegistrationNumber.md) | NamingSystem for practitioner medical registration number registration identifiers in Fiji |
| [Fiji RIS Accession Number](NamingSystem-FijiRISAccessionNumber.md) | NamingSystem for RIS Accession number. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Appendectomy Procedure Example](Procedure-AppendectomyProcedureExample.md) | Example of a patient undergoing a surgical appendectomy. |
| [Body temperature vital observation](Observation-FijiBodyTemperatureExample.md) | Body temperature observation example with reference ranges and interpretation. |
| [Condition Example - Type 2 Diabetes Mellitus](Condition-condition-example-diabetes2.md) | Example of diagnosis/problem list condition |
| [Device Example - Pulse Oximeter](Device-FijiDeviceExamplePulseOximeter.md) | Example of Pulse Oximeter device |
| [Device Example - Scale](Device-FijiDeviceExampleScale.md) | Example of Scale device |
| [Device Example - Stadiometer](Device-FijiDeviceExampleStadiometer.md) | Example of Stadiometer device |
| [Example Body Height](Observation-Example-BodyHeight.md) | Example body height observation including measurement device reference. |
| [Example Body Weight](Observation-Example-BodyWeight.md) | Example of Body Weight vital measurement |
| [Example CT Head Diagnostic Report](DiagnosticReport-dr-ct-head-001.md) | Example final diagnostic report for a CT examination of the head. |
| [Example CT Head Service Request](ServiceRequest-sr-ct-head-001.md) | Example service request for a CT head examination. |
| [Example Fiji Clinic](Organization-FijiClinicExample.md) | Example of a primary care clinic providing community healthcare services in Fiji. |
| [Example Fiji Divsion - Central](Organization-FijiDivisionExampleCentral.md) | Example of a Division level Administrative Zone. |
| [Example Fiji Divsion - Northen](Organization-FijiDivisionExample.md) | Example of a Division level Administrative Zone. |
| [Example Fiji Hospital](Organization-FijiHospitalExample.md) | Example of a hospital providing healthcare services in Fiji. |
| [Example Fiji Medical Area](Organization-FijiMedicalAreaExample.md) | Example of a Medical Area level Administrative Zone. |
| [Example Fiji Nursing Zone](Organization-FijiNursingZoneExample.md) | Example of a Nursing Zone level Administrative Zone. |
| [Example Fiji Subdivsion](Organization-FijiSubdivisionExample.md) | Example of a Subdivision level Administrative Zone. |
| [Example Fiji Subdivsion Serua Namosi](Organization-FijiSubdivisionExampleNamosi.md) | Example of a Subdivision level Administrative Zone. |
| [Example HDL Cholesterol](Observation-ExampleHDLCholesterol.md) | Example HDL Cholesterol |
| [Example LDL Cholesterol](Observation-ExampleLDLCholesterol.md) | Example LDL Cholesterol |
| [Example Lipid Panel](Observation-ExampleLipidPanel.md) | Example Lipid Panel |
| [Example Lipid Panel Report](DiagnosticReport-ExampleLipidPanelReport.md) | Example laboratory report containing a lipid panel. |
| [Example Lipid Panel Specimen](Specimen-ExampleLipidSpecimen.md) | Example Lipid Panel Specimen |
| [Example Total Cholesterol](Observation-ExampleTotalCholesterol.md) | Example Total Cholesterol |
| [Example Triglycerides](Observation-ExampleTriglycerides.md) | Example Triglycerides observation |
| [Example arterial oxygen partial pressure](Observation-ExampleArterialPO2.md) | Example arterial oxygen partial pressure |
| [Example location](Location-FijiLocationExample.md) | Example of a Fiji location healthcare setting |
| [Example outpatient encounter](Encounter-FijiEncounterExample.md) | Example of an outpatient encounter in a Fiji healthcare setting |
| [Example-BMI](Observation-Example-BMI.md) | Example of Body-Mass-Index observation |
| [ExampleBloodPressure](Observation-ExampleBloodPressure.md) | Example of a blood pressure observation with both Systolic & Diastolic measures |
| [Fiji AllergyIntolerance Example](AllergyIntolerance-FijiAllergyIntoleranceExample.md) | Example of an AllergyIntolerance for a patient with a confirmed penicillin allergy. |
| [Fiji Amoxicillin Medication Dispense Example](MedicationDispense-FijiMedicationDispenseExample.md) | Example of dispensing amoxicillin against a medication request for FijiPatientExample. |
| [Fiji Diagnostic Observation - Chest X-ray Report](Observation-FijiDiagnosticObservationChestXrayReport.md) | Example of a radiology diagnostic observation representing a chest X-ray report with multiple individual findings. |
| [Fiji Diagnostic Observation - Pleural Effusion](Observation-FijiDiagnosticObservationPleuralEffusion.md) | Example of Basal Pnuemonia observation |
| [Fiji Diagnostic Observation - Pulmonary Consolidation](Observation-FijiDiagnosticObservationPulmonaryConsolidation.md) | Example of Pulmonary Consolidation observation |
| [Fiji Head Circumference Example](Observation-FijiHeadCircumferenceExample.md) | Example of head circumference observation |
| [Fiji Hospital Example Fiji Divisional Hospital](Organization-FijiOrganizationExample.md) | Example Fiji hospital organization in Fiji. Includes organizational identifier, contact information, and address. |
| [Fiji Medication Placeholder Example](Medication-FijiMedicationExample.md) | This profile is an example of a placeholder to be extended in subsequent versions of the Fiji Core IG. |
| [Fiji Medication Request Example](MedicationRequest-FijiMedicationRequestExample.md) | Example prescription for amoxicillin for a Fiji patient. |
| [Fiji Patient - iTaukei](Patient-FijiPatientExample.md) | Example Fijian patient of iTaukei background demonstrating:* Simulated national health identifier
* Official and usual names
* iTaukei affiliation
 |
| [Fiji Patient – Indo-Fijian](Patient-FijiPatientFijiIndo.md) | Example Indo-Fijian patient demonstrating:* Simulated national health identifier
* Official and usual names
* No clan affiliation
 |
| [Fiji Practitioner Example](Practitioner-FijiPractitionerExample.md) | Example of a registered medical practitioner practising in Fiji. Note: The registration number and names are for illustrative purposes only and are not intended to represent a verified practitioner record. |
| [Fiji Practitioner Role District Hospital GP](PractitionerRole-FijiPractitionerRoleExample.md) | General Practitioner role at district hospital for registered Fiji practitioner. |
| [Fiji Radiologist Example](Practitioner-FijiRadiologistExample.md) | Example of a radiologist practitioner practising in Fiji. Note: The registration number and names are for illustrative purposes only and are not intended to represent a verified practitioner record. |
| [Fiji Related Person Placeholder Example](RelatedPerson-FijiRelatedPersonExample.md) | This profile is an example of a placeholder to be extended in subsequent versions of the Fiji Core IG. |
| [Fiji Specimen Placeholder Example](Specimen-FijiSpecimenExample.md) | This profile is an example of a placeholder to be extended in subsequent versions of the Fiji Core IG. |
| [FijiPatientChildExample](Patient-FijiPatientChildExample.md) | Example child patient with official names and demographic details. |
| [FijiPatientExample1](Patient-FijiPatientExample1.md) | Example patient with official and usual names, clan affiliation, and demographic details. |
| [FijiPatientExample2](Patient-FijiPatientExample2.md) | Example patient with official and usual names, clan affiliation, and demographic details. |
| [HeartRateExample](Observation-HeartRateExample.md) | Example of heart rate observation |
| [Oxygen Saturation Observation](Observation-OxygenSaturationExample.md) | Oxygen saturation measured by pulse oximetry |
| [RespiratoryRateExample](Observation-RespiratoryRateExample.md) | Example of respiratory rate observation |
| [Tdap Immunization](Immunization-FijiTdapImmunizationExample.md) | This is an example of a vaccination conforming to the Fiji Immunization profile. Select the JSON tab to view the JSON code that would represent this as a FHIR resource. |
| [Tdap Immunization with Reaction](Immunization-FijiImmunizationReactionExample.md) | Example of Immunization with reaction |
| [Tdap Injection Site Reaction](Observation-FijiTdapReactionObservation.md) | Example of Immunization reaction observation |

