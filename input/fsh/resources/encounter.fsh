// Encounter providing care for patients in this IG scope
Profile: FijiEncounter
Parent: Encounter
Id: fiji-encounter
Title: "Fiji Healthcare Encounter"
Description: """
## Fiji Healthcare Encounter

The **Fiji Healthcare Encounter** profile represents an interaction between a patient and the healthcare system in which healthcare services are provided. It is based on the FHIR `Encounter` resource and is intended to support the recording of clinical encounters within the scope of this Implementation Guide.

The profile constrains the patient, encounter classification, service type, participants, timing, reasons for the encounter, locations, and responsible healthcare organisation. Where appropriate, references are restricted to the corresponding Fiji profiles.

### Key Elements

| Element | Cardinality | Type / Binding | Description |
|---|---:|---|---|
| `identifier` | 0..* | Identifier | Business identifier(s) assigned to the encounter, such as a facility encounter number or local medical record number. |
| `status` | **1..1** | Code | Current status of the encounter, such as planned, in-progress, finished, or cancelled. |
| `class` | **1..1** | `FijiEncounterClassVS` | Classification of the encounter, for example inpatient, outpatient, emergency, or ambulatory care. |
| `serviceType` | 0..* | `FijiServiceTypeVS` (preferred) | The type of healthcare service provided during the encounter. |
| `subject` | **1..1** | Reference(`FijiPatient`) | The patient who is the subject of the encounter. |
| `participant.type` | 0..* | `$participant-type-vs` | Identifies the role or function of a participant in the encounter, such as attending clinician or consultant. |
| `participant.individual` | 0..1 | Reference(`FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`) | Identifies the person participating in the encounter. |
| `period` | 0..1 | Period | The date and time during which the encounter took place or is expected to take place. |
| `reasonCode` | 0..* | `FijiEncounterReasonVS` (preferred) | Coded reason for the encounter, such as a presenting complaint, clinical problem, or other reason for seeking care. |
| `reasonReference` | 0..* | Reference(`FijiCondition` or `FijiProcedure`) | References a condition or procedure that is the reason for the encounter. |
| `location.location` | 0..1 | Reference(`FijiLocation`) | The physical location where the encounter occurred. |
| `serviceProvider` | 0..1 | Reference(`FijiOrganization`) | The organisation responsible for providing the healthcare services associated with the encounter. |

### Encounter Classification

The `class` element is mandatory and is bound to the **`$enc-class-vs`** value set. This identifies the broad setting or classification of the encounter and should be used consistently to distinguish, for example, inpatient, outpatient, emergency, and other forms of healthcare delivery.

### Service Type

`serviceType` identifies the specific type of healthcare service being provided. It is bound with a **preferred** binding to `FijiServiceTypeVS`, allowing implementations to use the Fiji-defined terminology where applicable while permitting other codes where necessary.

### Patient and Participants

The `subject` element is mandatory and is restricted to a reference to a `FijiPatient`.

Encounter participants may be recorded using `participant.type` to describe their role and `participant.individual` to identify the participating person. Participants are restricted to a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`.

### Reason for Encounter

The reason for the encounter can be represented using either:

- `reasonCode` for a coded reason that does not require a reference to another resource; or
- `reasonReference` when the reason is represented by an existing `FijiCondition` or `FijiProcedure` resource.

The `reasonCode` element has a preferred binding to `FijiEncounterReasonVS`.

### Location and Service Provider

The `location.location` element identifies where the encounter occurred and is restricted to a `FijiLocation`.

The `serviceProvider` identifies the organisation responsible for the healthcare service and is restricted to a `FijiOrganization`.

### Terminology Bindings

| Element | Value Set | Binding |
|---|---|---|
| `class` | `$enc-class-vs` | **Required** |
| `serviceType` | `FijiServiceTypeVS` | **Preferred** |
| `participant.type` | `$participant-type-vs` | **Required** |
| `reasonCode` | `FijiEncounterReasonVS` | **Preferred** |

### Relationship to Other Resources

A `FijiEncounter` may be associated with other clinical and administrative resources, including:

- **Patient** – identifies the patient receiving care.
- **Practitioner / PractitionerRole** – identifies healthcare professionals involved in the encounter.
- **RelatedPerson** – identifies other people participating in the patient's care.
- **Condition** – may identify a condition that is the reason for the encounter.
- **Procedure** – may identify a procedure associated with or motivating the encounter.
- **Location** – identifies where care was provided.
- **Organization** – identifies the healthcare organisation responsible for the encounter.

This profile is currently **work in progress** and may be subject to further refinement as encounter requirements for the Fiji implementation are established.
"""
* identifier MS
* status 1..1 MS
* class 1..1 MS
* class from $enc-class-vs
* serviceType MS
* serviceType from FijiServiceTypeVS (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* participant.type MS
* participant.type from $participant-type-vs
* participant.individual MS
* participant.individual only Reference(FijiPractitioner or FijiPractitionerRole or FijiRelatedPerson)
* period MS
* reasonCode MS
* reasonCode from FijiEncounterReasonVS (preferred)
* reasonReference MS
* reasonReference only Reference(FijiCondition or FijiProcedure)
* location.location only Reference(FijiLocation)
* serviceProvider only Reference(FijiOrganization)
