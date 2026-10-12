Profile: FijiProcedure
Parent: Procedure
Id: fiji-procedure
Title: "Fiji Healthcare Procedure"
Description: """
# Fiji Healthcare Procedure

## Overview

The `FijiProcedure` profile defines how the FHIR `Procedure` resource is used to record current and historical procedures performed on or for a patient within the Fiji Healthcare Implementation Guide.

A procedure is an activity performed on, with, or for a patient as part of the provision of healthcare or support services. Examples include surgical and diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modifications, and exercise.

Procedures may be performed by healthcare professionals, service providers, friends or relatives, or by the patient themselves.

This profile constrains the standard FHIR `Procedure` resource to support consistent recording of procedure details, including the procedure performed, its status, the patient, the associated encounter and service request, the performers, the reasons for the procedure, the anatomical site, the outcome, and any complications.

## Resource Details

| Property | Value |
|---|---|
| Resource | `Procedure` |
| Profile | `FijiProcedure` |
| Profile ID | `fiji-procedure` |
| Parent | `Procedure` |
| Title | Fiji Healthcare Procedure |

## Profile Elements

The following table describes the key elements defined or constrained by the profile. Cardinalities and terminology bindings reflect the supplied FSH.

| Element | Cardinality | Type / Reference | Terminology Binding | Description |
|---|---|---|---|---|
| `basedOn` | 0..* | Reference(`FijiServiceRequest`) | — | References the service request(s) that authorised or initiated the procedure. |
| `status` | 1..1 | Code | FHIR Procedure status codes | Indicates the current status of the procedure, such as preparation, in progress, completed, or not done. |
| `category` | 0..1 | CodeableConcept | `$proc-cat-vs` (Preferred) | Classifies the procedure into a broader category, such as a surgical or diagnostic procedure. |
| `code` | 1..1 | CodeableConcept | `$proc-code-ips-vs` (Preferred) | Identifies the specific procedure performed or intended, using an appropriate procedure code. |
| `subject` | 1..1 | Reference(`FijiPatient`) | — | Identifies the patient on whom, with whom, or for whom the procedure was performed. |
| `encounter` | 0..1 | Reference(`FijiEncounter`) | — | References the healthcare encounter associated with the procedure, when applicable. |
| `performed[x]` | 0..1 | `dateTime`, `Period`, `string`, `Age`, `Range`, or `Timing` | — | Records when the procedure was performed or the period during which it took place. |
| `performer` | 0..* | BackboneElement | — | Identifies the individuals or organisations involved in performing the procedure. |
| `performer.actor` | — | Reference(`FijiPractitioner`, `FijiPractitionerRole`, `FijiOrganization`, or `FijiPatient`) | — | Identifies the person, role, organisation, or patient who performed the procedure. |
| `reasonCode` | 0..* | CodeableConcept | `$proc-reason-vs` (Preferred) | Records the reason or clinical indication for performing the procedure. |
| `bodySite` | 0..* | CodeableConcept | `FijiBodySiteVS` (Extensible) | Identifies the anatomical location on which the procedure was performed. |
| `outcome` | 0..1 | CodeableConcept | `$proc-outcome-vs` (Preferred) | Records the outcome of the procedure, where known. |
| `complication` | 0..* | CodeableConcept | `FijiConditionCodeVS` (Preferred) | Records complications associated with the procedure. |
| `note` | 0..* | Annotation | — | Provides additional narrative information about the procedure. |

## Implementation Guidance

### Procedure Identification and Classification

The `code` element is mandatory and identifies the specific procedure. Implementations should use appropriate codes from the preferred `$proc-code-ips-vs` value set. The optional `category` element provides a broader classification using `$proc-cat-vs`.

### Status and Timing

The `status` element is mandatory and indicates the lifecycle state of the procedure. The `performed[x]` element records the procedure's timing when available. Implementations should distinguish between a procedure that was completed, is in progress, or was not performed, using the appropriate status and timing information.

### Patient, Encounter and Service Request References

The `subject` element must reference a `FijiPatient`. Where applicable, `encounter` links the procedure to a `FijiEncounter`, while `basedOn` links it to one or more `FijiServiceRequest` resources.

These references support traceability between the patient, the clinical encounter, the requested service, and the procedure performed.

### Performers

The `performer` element records those involved in performing the procedure. The `performer.actor` reference is constrained to the following Fiji profiles:

- `FijiPractitioner`
- `FijiPractitionerRole`
- `FijiOrganization`
- `FijiPatient`

This allows procedures performed by healthcare professionals, healthcare organisations, or patients themselves to be represented.

### Clinical Context and Anatomical Site

The `reasonCode` element captures the clinical reason or indication for the procedure. The `bodySite` element identifies the relevant anatomical site and uses the `FijiBodySiteVS` value set with an extensible binding.

Implementations should record these elements when the information is relevant and available.

### Outcomes and Complications

The optional `outcome` element records the result of the procedure using the preferred `$proc-outcome-vs` value set. The `complication` element allows one or more complications to be recorded using the preferred `FijiConditionCodeVS` value set.

### Additional Notes

The `note` element supports narrative information that supplements the structured procedure data, such as relevant clinical observations or additional details about how the procedure was performed.

## Conformance Requirements

- The `status`, `code`, and `subject` elements are mandatory.
- The `subject` must reference a `FijiPatient`.
- The `basedOn` element, when present, must reference a `FijiServiceRequest`.
- The `encounter` element, when present, must reference a `FijiEncounter`.
- The `performer.actor` reference is restricted to the specified Fiji practitioner, practitioner role, organisation, or patient profiles.
- Terminology bindings marked **Preferred** should be followed where suitable codes are available.
- The `bodySite` binding is **Extensible**; other codes may be used when an appropriate concept is not available in the specified value set.
- Elements marked Must Support (`MS`) are expected to be supported by conformant implementations in accordance with the implementation guide's Must Support requirements.

"""
* basedOn 0..* MS
* basedOn only Reference(FijiServiceRequest)

* status 1..1 MS
* category 0..1 MS
* category from $proc-cat-vs (preferred)
* code 1..1 MS
* code from $proc-code-ips-vs (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* performed[x] 0..1 MS
* performer MS
* performer.actor only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization or FijiPatient)
* reasonCode 0..* MS
* reasonCode from $proc-reason-vs (preferred)
* bodySite MS
* bodySite from FijiBodySiteVS (extensible)
* outcome 0..1 MS
* outcome from $proc-outcome-vs (preferred)
* complication 0..* MS
* complication from FijiConditionCodeVS (preferred)
* note MS
