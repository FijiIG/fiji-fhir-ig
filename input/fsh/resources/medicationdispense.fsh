Profile: FijiMedicationDispense
Parent: MedicationDispense
Id: fiji-medication-dispense
Title: "Fiji Medication Dispense"
Description: """
# Fiji Medication Dispense

## Profile Description

The Fiji Medication Dispense profile defines the minimum expectations for recording medication dispensing events in Fiji healthcare settings. It is based on the FHIR R4 `MedicationDispense` resource and supports the exchange of information about medications supplied to patients, including the dispensing status, medication details, authorizing prescription, dispensing practitioner or organization, quantity supplied, and date of handover.

The profile introduces a mandatory mSupply dispense identifier to support consistent identification and traceability of dispensing records across systems. It also constrains references to Fiji-specific profiles to improve interoperability between Fiji healthcare information systems.

## Scope and Usage

This profile is intended for recording medication dispensing events, including the supply of medications in response to an authorized prescription. It supports:

- Identifying each dispense record using one or more identifiers, including a mandatory mSupply dispense identifier.
- Recording the status of the dispensing event.
- Identifying the medication supplied using a coded concept or a reference to a Fiji Medication resource.
- Identifying the patient receiving the medication.
- Linking the dispense to one or more authorizing medication requests.
- Identifying the practitioner, practitioner role, or organization responsible for dispensing.
- Recording the quantity supplied and the date the medication was handed over.
- Optionally associating the dispense with an encounter, dispensing location, preparation date, days supply, and dosage instructions.

## Key Elements

The following table describes the important, mandatory, and Must Support elements defined by this profile.

| Element | Cardinality | Requirements and usage |
|---|---|---|
| `identifier` | 1..* Must Support | Identifies the medication dispense record. At least one identifier is required. The identifiers are sliced by `system`, allowing identifiers from different assigning systems. |
| `identifier.use` | Base cardinality; Must Support | Indicates the purpose of an identifier, such as usual, official, or secondary. Implementations should populate this when the identifier's use is known. |
| `identifier.system` | 1..1 Must Support | Identifies the namespace that assigns the identifier. Every identifier must have a system URI. |
| `identifier.value` | 1..1 Must Support | Contains the identifier value assigned by the relevant system. Every identifier must have a value. |
| `identifier[mSupplyDispenseId]` | 1..1 Must Support | The mandatory identifier slice for the mSupply dispensing system. Every dispense record must contain exactly one identifier using the required system URI. |
| `identifier[mSupplyDispenseId].system` | 1..1 | Must equal `http://fhir.health.gov.fj/identifier/msupply-dispense`. This fixed URI identifies the mSupply dispense identifier namespace. |
| `identifier[mSupplyDispenseId].value` | 1..1 | Contains the unique dispense identifier assigned by mSupply. The value must be present for every dispense record. |
| `status` | 1..1 Must Support | Records the current status of the dispensing event, such as preparation, completion, cancellation, or entry in error. The value must conform to the FHIR `MedicationDispense.status` value set. |
| `medication[x]` | 1..1 Must Support | Identifies the medication supplied. Exactly one representation must be provided: `medicationCodeableConcept` or `medicationReference`. |
| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. It is bound to `FijiMedVS` with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. |
| `medicationReference` | Choice option; Must Support | References a `FijiMedication` resource containing details of the medication supplied. This is an alternative to the coded concept representation. |
| `subject` | 1..1 Must Support | Identifies the patient who received the medication. The reference must target `FijiPatient`. |
| `context` | Base cardinality; Must Support | Optionally links the dispense to the healthcare encounter associated with the dispensing event. When present, the reference must target `FijiEncounter`. In FHIR R4, this element is named `context`. |
| `performer` | 1..* Must Support | Identifies the individual or organization involved in dispensing the medication. At least one performer is required. |
| `performer.actor` | 1..1 Must Support | Identifies the practitioner, practitioner role, or organization responsible for the dispensing activity. This element is mandatory within each performer entry. |
| `authorizingPrescription` | 1..* Must Support | References the medication request or requests authorizing the dispensing event. At least one reference is required, and each reference must target `FijiMedicationRequest`. |
| `quantity` | 1..1 Must Support | Records the amount of medication supplied. This is mandatory and should include an appropriate numerical value and unit. |
| `daysSupply` | Base cardinality; Must Support | Records the period of supply provided by the dispense, when known. It may be used to indicate the number of days for which the supplied medication is expected to last. |
| `whenHandedOver` | 1..1 Must Support | Records the date and time when the medication was handed to the patient or their representative. This element is mandatory. |
| `whenPrepared` | Base cardinality; Must Support | Records the date and time when the medication was prepared for dispensing, where applicable. |
| `location` | Base cardinality; target constrained | Optionally identifies the physical location where the medication was supplied or dispensed. When present, the reference must target `FijiLocation`. |
| `dosageInstruction` | Base cardinality; Must Support | Provides dosage instructions associated with the dispensed medication. This can include structured dosage information and directions for use. |
| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions, suitable for display to patients and healthcare professionals. It is not mandatory under this profile. |

**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their cardinalities are inherited from FHIR R4 `MedicationDispense`.

## Identifier Requirements

Every `FijiMedicationDispense` resource must contain at least one identifier. The profile requires a specific identifier slice for the mSupply dispensing system.

| Property | Requirement |
|---|---|
| Identifier system | `http://fhir.health.gov.fj/identifier/msupply-dispense` |
| Identifier value | Mandatory; contains the mSupply dispense identifier |
| Identifier slice | `mSupplyDispenseId` |
| Slice cardinality | Exactly one identifier |
| Slicing discriminator | `system`, using value-based slicing |
| Slicing rules | Open; additional identifiers using other systems are permitted |

The open slicing rule allows additional identifiers to be recorded alongside the mandatory mSupply identifier. This supports interoperability with other dispensing systems, local identifiers, and external workflows without compromising the requirement for mSupply traceability.

## Medication Identification

The `medication[x]` element is mandatory and supports two alternative representations:

1. **Coded medication:** Use `medicationCodeableConcept` to identify the supplied medication directly using a coded concept. The `FijiMedVS` ValueSet provides the preferred terminology.
2. **Medication resource reference:** Use `medicationReference` to reference a `FijiMedication` resource containing the medication details.

Exactly one of these alternatives must be populated. The preferred ValueSet binding encourages consistent medication coding while allowing other appropriate codes when necessary.

## Prescription and Dispensing Performer

The `authorizingPrescription` element links the dispensing event to the medication request that authorized it. The profile requires at least one reference, and each reference must target a `FijiMedicationRequest` resource.

The `performer` element identifies those responsible for dispensing the medication. At least one performer must be recorded, and each performer entry must contain an `actor`. The permitted reference targets are:

- `FijiPractitioner`
- `FijiPractitionerRole`
- `FijiOrganization`

This supports representation of an individual dispensing practitioner, a practitioner acting in a defined role, or an organization responsible for the dispensing activity.

## Quantity and Handover

The `quantity` element is mandatory and records the amount of medication supplied. Implementations should use appropriate units and represent the quantity consistently with the medication's pharmaceutical form.

The `whenHandedOver` element is mandatory and records when the medication was handed to the patient or their representative. It is distinct from `whenPrepared`, which records the preparation date and time where that information is available.

The optional `daysSupply` element can be used to indicate the expected duration of the dispensed supply.

## Dosage Instructions

The profile marks both `dosageInstruction` and `dosageInstruction.text` as Must Support. The text element provides a human-readable description of the directions for using the dispensed medication.

Where a dispense fulfils a prescription, the dosage instructions should be consistent with the associated `FijiMedicationRequest`, unless a clinically authorized change has occurred. The dispense may record the instructions supplied to the patient, which can help preserve the directions associated with the actual supply.

Neither `dosageInstruction` nor `dosageInstruction.text` is made mandatory by the profile.

## Referenced Fiji Profiles

| Profile | Purpose |
|---|---|
| `FijiPatient` | Identifies the patient receiving the medication. |
| `FijiEncounter` | Identifies the healthcare encounter associated with the dispensing event. |
| `FijiPractitioner` | Identifies an individual practitioner involved in dispensing. |
| `FijiPractitionerRole` | Identifies a practitioner's role in a healthcare organization or service. |
| `FijiOrganization` | Identifies an organization responsible for dispensing. |
| `FijiLocation` | Identifies the physical location associated with dispensing. |
| `FijiMedication` | Represents the medication supplied. |
| `FijiMedicationRequest` | Represents the medication request authorizing the dispense. |

## Must Support Interpretation

Elements marked Must Support indicate that implementations claiming conformance to this profile are expected to support those elements according to the implementation guide's conformance requirements.

Must Support does not, by itself, make an element mandatory or require it to be populated in every resource instance. Mandatory presence is determined by cardinality, such as `1..1` or `1..*`.

For this profile, mandatory elements include the identifier and mSupply identifier slice, `status`, `medication[x]`, `subject`, `performer`, `performer.actor`, `authorizingPrescription`, `quantity`, and `whenHandedOver`. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.

## Alignment with Regional IGs

The following specifications have been reviewed in the development of this profile:

- **Australian AU Base Implementation Guide 6.0.0** — reviewed as a regional reference for FHIR conformance expectations, resource representation, and interoperability practices.
- **JPC Medication Dispense profile** - reviewed for conformance with current practice and legacy data handling
The Fiji Medication Dispense profile builds on the FHIR R4 `MedicationDispense` resource while introducing a mandatory mSupply dispense identifier, Fiji-specific reference constraints, and a preferred medication terminology binding. These adaptations support local medication dispensing workflows and traceability requirements while maintaining alignment with regional FHIR implementation practices.
"""

// dispense record must have at least one identifier
* identifier 1..* MS
* identifier.use MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

// Slice identifiers by their system URI
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

// Mandatory national health number
* identifier contains mSupplyDispenseId 1..1 MS
* identifier[mSupplyDispenseId].system 1..1
* identifier[mSupplyDispenseId].system = "http://fhir.health.gov.fj/identifier/msupply-dispense" (exactly)
* identifier[mSupplyDispenseId].value 1..1

* status 1..1 MS
* medication[x] 1..1 MS
* medicationCodeableConcept MS
* medicationCodeableConcept from FijiMedVS (preferred)
* medicationReference only Reference(FijiMedication)
* medicationReference MS

* subject only Reference(FijiPatient)
* subject 1..1 MS

* context only Reference(FijiEncounter)
* context MS

* performer 1..* MS
* performer.actor 1..1 MS
* performer.actor only Reference(FijiPractitioner or FijiPractitionerRole or FijiOrganization)

* location only Reference(FijiLocation)

* authorizingPrescription 1..* MS
* authorizingPrescription only Reference(FijiMedicationRequest)

* quantity 1..1 MS

* daysSupply MS
* whenHandedOver 1..1 MS
* whenPrepared MS

* dosageInstruction MS
* dosageInstruction.text MS
