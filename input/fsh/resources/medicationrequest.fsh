// MedicationRequest (Prescriptions) 
Profile: FijiMedicationRequest
Parent: MedicationRequest
Id: fiji-medication-request
Title: "Fiji Medication Request"
Description: """
# Fiji Medication Request

## Profile Description

The Fiji Medication Request profile defines minimum expectations for recording, searching, and retrieving medication requests associated with a patient in Fiji healthcare settings. It is based on the FHIR R4 `MedicationRequest` resource and supports the representation of prescriptions, medication orders, and associated clinical information.

The profile references Fiji-specific patient, encounter, practitioner, practitioner role, organization, medication, condition, and observation profiles to promote consistent representation and interoperability across Fiji healthcare systems.

A medication request records the details of a medication that is requested or prescribed for a patient, including the medication, the status and intent of the request, the requester, the date the request was authored, and any associated clinical reasons and dosage instructions.

## Scope and Usage

This profile is intended for use when recording medication requests in Fiji healthcare information systems. It supports:

- Recording the status and intent of a medication request.
- Identifying the medication using a coded concept or a reference to a Fiji Medication resource.
- Linking the request to the patient and, where applicable, the encounter.
- Identifying the practitioner, practitioner role, or organization responsible for the request.
- Recording clinical reasons for the medication request using codes or references to relevant clinical resources.
- Supporting dosage instructions, including a human-readable description of how the medication should be taken or administered.

The profile establishes minimum conformance expectations for the key elements required to exchange medication request information. Implementers may populate additional elements permitted by the base FHIR resource where required by local workflows.

## Key Elements

The following table describes the important, mandatory, and Must Support elements defined by this profile.

| Element | Cardinality | Requirements and usage |
|---|---|---|
| `status` | 1..1 Must Support | The current state of the medication request, such as active, completed, cancelled, or entered in error. This element is mandatory and must be supported by implementations. The value must conform to the FHIR `MedicationRequest.status` value set. |
| `intent` | 1..1 Must Support | The intent of the request, such as order, proposal, or plan. This element is mandatory and must be supported by implementations. The value must conform to the FHIR `MedicationRequest.intent` value set. |
| `medication[x]` | 1..1 Must Support | Identifies the medication being requested. Exactly one medication representation must be provided: either `medicationCodeableConcept` or `medicationReference`. Both representations are marked Must Support, allowing implementations to support coded medication identification and references to structured medication resources. |
| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. The element is bound to the `FijiMedVS` ValueSet with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. The preferred binding does not prohibit other codes when necessary. |
| `medicationReference` | Choice option; Must Support | References a `FijiMedication` resource that describes the medication being requested. The reference must target the Fiji Medication profile. This option is an alternative to `medicationCodeableConcept`; both must not be populated simultaneously. |
| `subject` | Base cardinality; Must Support not explicitly declared | Identifies the patient for whom the medication is requested. When present, the reference must target `FijiPatient`. The base FHIR cardinality is retained, so this element is not made mandatory by this profile. |
| `encounter` | Base cardinality; Must Support not explicitly declared | Links the medication request to the healthcare encounter during which it was initiated or is being managed. When present, the reference must target `FijiEncounter`. The element remains optional. |
| `authoredOn` | 1..1 Must Support | Records the date and time when the medication request was initially authored. This is mandatory and supports the chronological interpretation of the prescription or order. |
| `requester` | 1..1 Must Support | Identifies the individual or organization responsible for the medication request. This element is mandatory. The reference must target a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization` resource. |
| `reasonCode` | Base cardinality; Must Support | Records the clinical reason for the medication request using one or more coded concepts. The element is bound to `FijiMedicationRequestReasonVS` with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. |
| `reasonReference` | Base cardinality; Must Support | References clinical information supporting the reason for the medication request. Permitted targets are `FijiCondition`, `FijiPathologyObservation`, and `FijiDiagnosticObservation`. This enables the request to be linked to a recorded condition or relevant clinical finding. |
| `dosageInstruction` | Base cardinality; Must Support | Provides instructions describing how the medication is to be used or administered. This element may contain structured dosage information, timing, route, dose, and other details supported by the base FHIR resource. |
| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions. This is useful for clinical review and for displaying instructions to patients and healthcare professionals. It is not mandatory under this profile. |

**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their actual cardinality is inherited from FHIR R4 `MedicationRequest`.

## Medication Identification

The `medication[x]` element is mandatory and supports two alternative representations:

1. **Coded medication:** Use `medicationCodeableConcept` to identify the medication directly by a code and, where appropriate, display text. The `FijiMedVS` ValueSet provides the preferred terminology for medication identification.
2. **Medication resource reference:** Use `medicationReference` to reference a `FijiMedication` resource containing the medication details.

Exactly one of these alternatives must be populated. The choice allows systems to exchange medication requests using either a directly coded medication or a separately maintained medication resource.

The preferred binding to `FijiMedVS` encourages consistent medication coding across Fiji implementations while allowing alternative codes where necessary.

## Clinical Reason and Dosage Instructions

The profile supports the recording of clinical reasons for a medication request through `reasonCode` and `reasonReference`.

- `reasonCode` supports direct coding of the clinical reason using the preferred `FijiMedicationRequestReasonVS` ValueSet.
- `reasonReference` supports links to a condition or clinical observation that provides evidence or context for the request.

Both elements are optional and marked Must Support. Implementations should support both coded and reference-based representations as appropriate to their workflows.

The `dosageInstruction` element supports instructions for medication use. Its `text` sub-element provides a human-readable representation that can be displayed in clinical applications and used to communicate medication directions. Both elements are marked Must Support but are not made mandatory by this profile.

## Referenced Fiji Profiles

Where the profile restricts references to Fiji-specific resources, the target resources are:

| Resource profile | Purpose |
|---|---|
| `FijiPatient` | Identifies the patient receiving the medication. |
| `FijiEncounter` | Identifies the healthcare encounter associated with the medication request. |
| `FijiPractitioner` | Identifies an individual healthcare practitioner responsible for the request. |
| `FijiPractitionerRole` | Identifies a practitioner's role within a healthcare organization or service. |
| `FijiOrganization` | Identifies an organization responsible for the medication request. |
| `FijiMedication` | Represents the medication being requested. |
| `FijiCondition` | Represents a condition that may explain or support the medication request. |
| `FijiPathologyObservation` | Represents a pathology-related observation that may support the clinical reason. |
| `FijiDiagnosticObservation` | Represents a diagnostic observation that may support the clinical reason. |

## Must Support Interpretation

Elements marked Must Support indicate that implementations claiming conformance to this profile are expected to support the element according to the implementation guide's conformance requirements.

Must Support does not, by itself, make an element mandatory or require that it be present in every resource instance. Mandatory presence is determined by cardinality, such as `1..1`.

For this profile, `status`, `intent`, `medication[x]`, `authoredOn`, and `requester` are mandatory and Must Support. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.

## Alignment with Regional IGs

The following specifications have been reviewed in the development of this profile:

- **Australian AU Core Implementation Guide 2.0.0** — reviewed as a regional reference for medication request representation, FHIR conformance expectations, and interoperability practices.

The Fiji Medication Request profile builds on the FHIR R4 `MedicationRequest` resource while introducing Fiji-specific reference constraints and preferred terminology bindings. These adaptations support local healthcare requirements while maintaining alignment with regional FHIR implementation practices.

"""
* status 1..1 MS
* intent 1..1 MS

// Medication must be specified using one of the supported choice types
* medication[x] 1..1 MS
* medicationCodeableConcept MS
* medicationCodeableConcept from FijiMedVS (preferred)
* medicationReference only Reference(FijiMedication)
* medicationReference MS

* subject only Reference(FijiPatient)
* encounter only Reference(FijiEncounter)
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only  Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization)

* reasonCode MS
* reasonCode from FijiMedicationRequestReasonVS (preferred)
* reasonReference MS
* reasonReference only Reference(FijiCondition or FijiPathologyObservation or FijiDiagnosticObservation)

* dosageInstruction MS
* dosageInstruction.text MS

