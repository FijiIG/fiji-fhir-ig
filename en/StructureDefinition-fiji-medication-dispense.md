# Fiji Medication Dispense - Draft Fiji Core Implementation Guide v0.3.0

## Resource Profile: Fiji Medication Dispense 

**Usages:**

* Examples for this Profile: [MedicationDispense/FijiMedicationDispenseExample](MedicationDispense-FijiMedicationDispenseExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-medication-dispense.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-medication-dispense.csv), [Excel](../StructureDefinition-fiji-medication-dispense.xlsx), [Schematron](../StructureDefinition-fiji-medication-dispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-medication-dispense",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-dispense",
  "version" : "0.3.0",
  "name" : "FijiMedicationDispense",
  "title" : "Fiji Medication Dispense",
  "status" : "draft",
  "date" : "2026-10-23T04:23:18+00:00",
  "publisher" : "MHMS Fiji",
  "contact" : [{
    "name" : "MHMS Fiji",
    "telecom" : [{
      "system" : "url",
      "value" : "https://fhir.health.gov.fj"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fhir.health.gov.fj"
    }]
  }],
  "description" : "# Fiji Medication Dispense\n\n## Profile Description\n\nThe Fiji Medication Dispense profile defines the minimum expectations for recording medication dispensing events in Fiji healthcare settings. It is based on the FHIR R4 `MedicationDispense` resource and supports the exchange of information about medications supplied to patients, including the dispensing status, medication details, authorizing prescription, dispensing practitioner or organization, quantity supplied, and date of handover.\n\nThe profile introduces a mandatory mSupply dispense identifier to support consistent identification and traceability of dispensing records across systems. It also constrains references to Fiji-specific profiles to improve interoperability between Fiji healthcare information systems.\n\n## Scope and Usage\n\nThis profile is intended for recording medication dispensing events, including the supply of medications in response to an authorized prescription. It supports:\n\n- Identifying each dispense record using one or more identifiers, including a mandatory mSupply dispense identifier.\n- Recording the status of the dispensing event.\n- Identifying the medication supplied using a coded concept or a reference to a Fiji Medication resource.\n- Identifying the patient receiving the medication.\n- Linking the dispense to one or more authorizing medication requests.\n- Identifying the practitioner, practitioner role, or organization responsible for dispensing.\n- Recording the quantity supplied and the date the medication was handed over.\n- Optionally associating the dispense with an encounter, dispensing location, preparation date, days supply, and dosage instructions.\n\n## Key Elements\n\nThe following table describes the important, mandatory, and Must Support elements defined by this profile.\n\n| Element | Cardinality | Requirements and usage |\n|---|---|---|\n| `identifier` | 1..* Must Support | Identifies the medication dispense record. At least one identifier is required. The identifiers are sliced by `system`, allowing identifiers from different assigning systems. |\n| `identifier.use` | Base cardinality; Must Support | Indicates the purpose of an identifier, such as usual, official, or secondary. Implementations should populate this when the identifier's use is known. |\n| `identifier.system` | 1..1 Must Support | Identifies the namespace that assigns the identifier. Every identifier must have a system URI. |\n| `identifier.value` | 1..1 Must Support | Contains the identifier value assigned by the relevant system. Every identifier must have a value. |\n| `identifier[mSupplyDispenseId]` | 1..1 Must Support | The mandatory identifier slice for the mSupply dispensing system. Every dispense record must contain exactly one identifier using the required system URI. |\n| `identifier[mSupplyDispenseId].system` | 1..1 | Must equal `http://fhir.health.gov.fj/identifier/msupply-dispense`. This fixed URI identifies the mSupply dispense identifier namespace. |\n| `identifier[mSupplyDispenseId].value` | 1..1 | Contains the unique dispense identifier assigned by mSupply. The value must be present for every dispense record. |\n| `status` | 1..1 Must Support | Records the current status of the dispensing event, such as preparation, completion, cancellation, or entry in error. The value must conform to the FHIR `MedicationDispense.status` value set. |\n| `medication[x]` | 1..1 Must Support | Identifies the medication supplied. Exactly one representation must be provided: `medicationCodeableConcept` or `medicationReference`. |\n| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. It is bound to `FijiMedVS` with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. |\n| `medicationReference` | Choice option; Must Support | References a `FijiMedication` resource containing details of the medication supplied. This is an alternative to the coded concept representation. |\n| `subject` | 1..1 Must Support | Identifies the patient who received the medication. The reference must target `FijiPatient`. |\n| `context` | Base cardinality; Must Support | Optionally links the dispense to the healthcare encounter associated with the dispensing event. When present, the reference must target `FijiEncounter`. In FHIR R4, this element is named `context`. |\n| `performer` | 1..* Must Support | Identifies the individual or organization involved in dispensing the medication. At least one performer is required. |\n| `performer.actor` | 1..1 Must Support | Identifies the practitioner, practitioner role, or organization responsible for the dispensing activity. This element is mandatory within each performer entry. |\n| `authorizingPrescription` | 1..* Must Support | References the medication request or requests authorizing the dispensing event. At least one reference is required, and each reference must target `FijiMedicationRequest`. |\n| `quantity` | 1..1 Must Support | Records the amount of medication supplied. This is mandatory and should include an appropriate numerical value and unit. |\n| `daysSupply` | Base cardinality; Must Support | Records the period of supply provided by the dispense, when known. It may be used to indicate the number of days for which the supplied medication is expected to last. |\n| `whenHandedOver` | 1..1 Must Support | Records the date and time when the medication was handed to the patient or their representative. This element is mandatory. |\n| `whenPrepared` | Base cardinality; Must Support | Records the date and time when the medication was prepared for dispensing, where applicable. |\n| `location` | Base cardinality; target constrained | Optionally identifies the physical location where the medication was supplied or dispensed. When present, the reference must target `FijiLocation`. |\n| `dosageInstruction` | Base cardinality; Must Support | Provides dosage instructions associated with the dispensed medication. This can include structured dosage information and directions for use. |\n| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions, suitable for display to patients and healthcare professionals. It is not mandatory under this profile. |\n\n**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their cardinalities are inherited from FHIR R4 `MedicationDispense`.\n\n## Identifier Requirements\n\nEvery `FijiMedicationDispense` resource must contain at least one identifier. The profile requires a specific identifier slice for the mSupply dispensing system.\n\n| Property | Requirement |\n|---|---|\n| Identifier system | `http://fhir.health.gov.fj/identifier/msupply-dispense` |\n| Identifier value | Mandatory; contains the mSupply dispense identifier |\n| Identifier slice | `mSupplyDispenseId` |\n| Slice cardinality | Exactly one identifier |\n| Slicing discriminator | `system`, using value-based slicing |\n| Slicing rules | Open; additional identifiers using other systems are permitted |\n\nThe open slicing rule allows additional identifiers to be recorded alongside the mandatory mSupply identifier. This supports interoperability with other dispensing systems, local identifiers, and external workflows without compromising the requirement for mSupply traceability.\n\n## Medication Identification\n\nThe `medication[x]` element is mandatory and supports two alternative representations:\n\n1. **Coded medication:** Use `medicationCodeableConcept` to identify the supplied medication directly using a coded concept. The `FijiMedVS` ValueSet provides the preferred terminology.\n2. **Medication resource reference:** Use `medicationReference` to reference a `FijiMedication` resource containing the medication details.\n\nExactly one of these alternatives must be populated. The preferred ValueSet binding encourages consistent medication coding while allowing other appropriate codes when necessary.\n\n## Prescription and Dispensing Performer\n\nThe `authorizingPrescription` element links the dispensing event to the medication request that authorized it. The profile requires at least one reference, and each reference must target a `FijiMedicationRequest` resource.\n\nThe `performer` element identifies those responsible for dispensing the medication. At least one performer must be recorded, and each performer entry must contain an `actor`. The permitted reference targets are:\n\n- `FijiPractitioner`\n- `FijiPractitionerRole`\n- `FijiOrganization`\n\nThis supports representation of an individual dispensing practitioner, a practitioner acting in a defined role, or an organization responsible for the dispensing activity.\n\n## Quantity and Handover\n\nThe `quantity` element is mandatory and records the amount of medication supplied. Implementations should use appropriate units and represent the quantity consistently with the medication's pharmaceutical form.\n\nThe `whenHandedOver` element is mandatory and records when the medication was handed to the patient or their representative. It is distinct from `whenPrepared`, which records the preparation date and time where that information is available.\n\nThe optional `daysSupply` element can be used to indicate the expected duration of the dispensed supply.\n\n## Dosage Instructions\n\nThe profile marks both `dosageInstruction` and `dosageInstruction.text` as Must Support. The text element provides a human-readable description of the directions for using the dispensed medication.\n\nWhere a dispense fulfils a prescription, the dosage instructions should be consistent with the associated `FijiMedicationRequest`, unless a clinically authorized change has occurred. The dispense may record the instructions supplied to the patient, which can help preserve the directions associated with the actual supply.\n\nNeither `dosageInstruction` nor `dosageInstruction.text` is made mandatory by the profile.\n\n## Referenced Fiji Profiles\n\n| Profile | Purpose |\n|---|---|\n| `FijiPatient` | Identifies the patient receiving the medication. |\n| `FijiEncounter` | Identifies the healthcare encounter associated with the dispensing event. |\n| `FijiPractitioner` | Identifies an individual practitioner involved in dispensing. |\n| `FijiPractitionerRole` | Identifies a practitioner's role in a healthcare organization or service. |\n| `FijiOrganization` | Identifies an organization responsible for dispensing. |\n| `FijiLocation` | Identifies the physical location associated with dispensing. |\n| `FijiMedication` | Represents the medication supplied. |\n| `FijiMedicationRequest` | Represents the medication request authorizing the dispense. |\n\n## Must Support Interpretation\n\nElements marked Must Support indicate that implementations claiming conformance to this profile are expected to support those elements according to the implementation guide's conformance requirements.\n\nMust Support does not, by itself, make an element mandatory or require it to be populated in every resource instance. Mandatory presence is determined by cardinality, such as `1..1` or `1..*`.\n\nFor this profile, mandatory elements include the identifier and mSupply identifier slice, `status`, `medication[x]`, `subject`, `performer`, `performer.actor`, `authorizingPrescription`, `quantity`, and `whenHandedOver`. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.\n\n## Alignment with Regional IGs\n\nThe following specifications have been reviewed in the development of this profile:\n\n- **Australian AU Base Implementation Guide 6.0.0** — reviewed as a regional reference for FHIR conformance expectations, resource representation, and interoperability practices.\n- **JPC Medication Dispense profile** - reviewed for conformance with current practice and legacy data handling\nThe Fiji Medication Dispense profile builds on the FHIR R4 `MedicationDispense` resource while introducing a mandatory mSupply dispense identifier, Fiji-specific reference constraints, and a preferred medication terminology binding. These adaptations support local medication dispensing workflows and traceability requirements while maintaining alignment with regional FHIR implementation practices.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.identifier.use",
      "path" : "MedicationDispense.identifier.use",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.identifier.system",
      "path" : "MedicationDispense.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.identifier.value",
      "path" : "MedicationDispense.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.identifier:mSupplyDispenseId",
      "path" : "MedicationDispense.identifier",
      "sliceName" : "mSupplyDispenseId",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.identifier:mSupplyDispenseId.system",
      "path" : "MedicationDispense.identifier.system",
      "fixedUri" : "http://fhir.health.gov.fj/identifier/msupply-dispense"
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-med-vs"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationReference",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer",
      "path" : "MedicationDispense.performer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-location"]
      }]
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.daysSupply",
      "path" : "MedicationDispense.daysSupply",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.whenPrepared",
      "path" : "MedicationDispense.whenPrepared",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.whenHandedOver",
      "path" : "MedicationDispense.whenHandedOver",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction",
      "path" : "MedicationDispense.dosageInstruction",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction.text",
      "path" : "MedicationDispense.dosageInstruction.text",
      "mustSupport" : true
    }]
  }
}

```
