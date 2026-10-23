# Fiji Medication Request - Draft Fiji Core Implementation Guide v0.3.0

## Resource Profile: Fiji Medication Request 

**Usages:**

* Refer to this Profile: [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md)
* Examples for this Profile: [MedicationRequest/FijiMedicationRequestExample](MedicationRequest-FijiMedicationRequestExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-medication-request.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-medication-request.csv), [Excel](../StructureDefinition-fiji-medication-request.xlsx), [Schematron](../StructureDefinition-fiji-medication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-medication-request",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-request",
  "version" : "0.3.0",
  "name" : "FijiMedicationRequest",
  "title" : "Fiji Medication Request",
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
  "description" : "# Fiji Medication Request\n\n## Profile Description\n\nThe Fiji Medication Request profile defines minimum expectations for recording, searching, and retrieving medication requests associated with a patient in Fiji healthcare settings. It is based on the FHIR R4 `MedicationRequest` resource and supports the representation of prescriptions, medication orders, and associated clinical information.\n\nThe profile references Fiji-specific patient, encounter, practitioner, practitioner role, organization, medication, condition, and observation profiles to promote consistent representation and interoperability across Fiji healthcare systems.\n\nA medication request records the details of a medication that is requested or prescribed for a patient, including the medication, the status and intent of the request, the requester, the date the request was authored, and any associated clinical reasons and dosage instructions.\n\n## Scope and Usage\n\nThis profile is intended for use when recording medication requests in Fiji healthcare information systems. It supports:\n\n- Recording the status and intent of a medication request.\n- Identifying the medication using a coded concept or a reference to a Fiji Medication resource.\n- Linking the request to the patient and, where applicable, the encounter.\n- Identifying the practitioner, practitioner role, or organization responsible for the request.\n- Recording clinical reasons for the medication request using codes or references to relevant clinical resources.\n- Supporting dosage instructions, including a human-readable description of how the medication should be taken or administered.\n\nThe profile establishes minimum conformance expectations for the key elements required to exchange medication request information. Implementers may populate additional elements permitted by the base FHIR resource where required by local workflows.\n\n## Key Elements\n\nThe following table describes the important, mandatory, and Must Support elements defined by this profile.\n\n| Element | Cardinality | Requirements and usage |\n|---|---|---|\n| `status` | 1..1 Must Support | The current state of the medication request, such as active, completed, cancelled, or entered in error. This element is mandatory and must be supported by implementations. The value must conform to the FHIR `MedicationRequest.status` value set. |\n| `intent` | 1..1 Must Support | The intent of the request, such as order, proposal, or plan. This element is mandatory and must be supported by implementations. The value must conform to the FHIR `MedicationRequest.intent` value set. |\n| `medication[x]` | 1..1 Must Support | Identifies the medication being requested. Exactly one medication representation must be provided: either `medicationCodeableConcept` or `medicationReference`. Both representations are marked Must Support, allowing implementations to support coded medication identification and references to structured medication resources. |\n| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. The element is bound to the `FijiMedVS` ValueSet with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. The preferred binding does not prohibit other codes when necessary. |\n| `medicationReference` | Choice option; Must Support | References a `FijiMedication` resource that describes the medication being requested. The reference must target the Fiji Medication profile. This option is an alternative to `medicationCodeableConcept`; both must not be populated simultaneously. |\n| `subject` | Base cardinality; Must Support not explicitly declared | Identifies the patient for whom the medication is requested. When present, the reference must target `FijiPatient`. The base FHIR cardinality is retained, so this element is not made mandatory by this profile. |\n| `encounter` | Base cardinality; Must Support not explicitly declared | Links the medication request to the healthcare encounter during which it was initiated or is being managed. When present, the reference must target `FijiEncounter`. The element remains optional. |\n| `authoredOn` | 1..1 Must Support | Records the date and time when the medication request was initially authored. This is mandatory and supports the chronological interpretation of the prescription or order. |\n| `requester` | 1..1 Must Support | Identifies the individual or organization responsible for the medication request. This element is mandatory. The reference must target a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization` resource. |\n| `reasonCode` | Base cardinality; Must Support | Records the clinical reason for the medication request using one or more coded concepts. The element is bound to `FijiMedicationRequestReasonVS` with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. |\n| `reasonReference` | Base cardinality; Must Support | References clinical information supporting the reason for the medication request. Permitted targets are `FijiCondition`, `FijiPathologyObservation`, and `FijiDiagnosticObservation`. This enables the request to be linked to a recorded condition or relevant clinical finding. |\n| `dosageInstruction` | Base cardinality; Must Support | Provides instructions describing how the medication is to be used or administered. This element may contain structured dosage information, timing, route, dose, and other details supported by the base FHIR resource. |\n| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions. This is useful for clinical review and for displaying instructions to patients and healthcare professionals. It is not mandatory under this profile. |\n\n**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their actual cardinality is inherited from FHIR R4 `MedicationRequest`.\n\n## Medication Identification\n\nThe `medication[x]` element is mandatory and supports two alternative representations:\n\n1. **Coded medication:** Use `medicationCodeableConcept` to identify the medication directly by a code and, where appropriate, display text. The `FijiMedVS` ValueSet provides the preferred terminology for medication identification.\n2. **Medication resource reference:** Use `medicationReference` to reference a `FijiMedication` resource containing the medication details.\n\nExactly one of these alternatives must be populated. The choice allows systems to exchange medication requests using either a directly coded medication or a separately maintained medication resource.\n\nThe preferred binding to `FijiMedVS` encourages consistent medication coding across Fiji implementations while allowing alternative codes where necessary.\n\n## Clinical Reason and Dosage Instructions\n\nThe profile supports the recording of clinical reasons for a medication request through `reasonCode` and `reasonReference`.\n\n- `reasonCode` supports direct coding of the clinical reason using the preferred `FijiMedicationRequestReasonVS` ValueSet.\n- `reasonReference` supports links to a condition or clinical observation that provides evidence or context for the request.\n\nBoth elements are optional and marked Must Support. Implementations should support both coded and reference-based representations as appropriate to their workflows.\n\nThe `dosageInstruction` element supports instructions for medication use. Its `text` sub-element provides a human-readable representation that can be displayed in clinical applications and used to communicate medication directions. Both elements are marked Must Support but are not made mandatory by this profile.\n\n## Referenced Fiji Profiles\n\nWhere the profile restricts references to Fiji-specific resources, the target resources are:\n\n| Resource profile | Purpose |\n|---|---|\n| `FijiPatient` | Identifies the patient receiving the medication. |\n| `FijiEncounter` | Identifies the healthcare encounter associated with the medication request. |\n| `FijiPractitioner` | Identifies an individual healthcare practitioner responsible for the request. |\n| `FijiPractitionerRole` | Identifies a practitioner's role within a healthcare organization or service. |\n| `FijiOrganization` | Identifies an organization responsible for the medication request. |\n| `FijiMedication` | Represents the medication being requested. |\n| `FijiCondition` | Represents a condition that may explain or support the medication request. |\n| `FijiPathologyObservation` | Represents a pathology-related observation that may support the clinical reason. |\n| `FijiDiagnosticObservation` | Represents a diagnostic observation that may support the clinical reason. |\n\n## Must Support Interpretation\n\nElements marked Must Support indicate that implementations claiming conformance to this profile are expected to support the element according to the implementation guide's conformance requirements.\n\nMust Support does not, by itself, make an element mandatory or require that it be present in every resource instance. Mandatory presence is determined by cardinality, such as `1..1`.\n\nFor this profile, `status`, `intent`, `medication[x]`, `authoredOn`, and `requester` are mandatory and Must Support. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.\n\n## Alignment with Regional IGs\n\nThe following specifications have been reviewed in the development of this profile:\n\n- **Australian AU Core Implementation Guide 2.0.0** — reviewed as a regional reference for medication request representation, FHIR conformance expectations, and interoperability practices.\n\nThe Fiji Medication Request profile builds on the FHIR R4 `MedicationRequest` resource while introducing Fiji-specific reference constraints and preferred terminology bindings. These adaptations support local healthcare requirements while maintaining alignment with regional FHIR implementation practices.\n",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
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
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
      "path" : "MedicationRequest.medication[x]",
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
      "id" : "MedicationRequest.medication[x]:medicationReference",
      "path" : "MedicationRequest.medication[x]",
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
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-medication-request-reason-vs"
      }
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-condition",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.text",
      "path" : "MedicationRequest.dosageInstruction.text",
      "mustSupport" : true
    }]
  }
}

```
