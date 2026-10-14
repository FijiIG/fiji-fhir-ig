# Fiji Healthcare Procedure - Draft Fiji Core Implementation Guide v0.2.2

## Resource Profile: Fiji Healthcare Procedure 

**Usages:**

* Refer to this Profile: [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-procedure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-procedure.csv), [Excel](../StructureDefinition-fiji-procedure.xlsx), [Schematron](../StructureDefinition-fiji-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-procedure",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-procedure",
  "version" : "0.2.2",
  "name" : "FijiProcedure",
  "title" : "Fiji Healthcare Procedure",
  "status" : "draft",
  "date" : "2026-10-14T05:21:25+00:00",
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
  "description" : "# Fiji Healthcare Procedure\n\n## Overview\n\nThe `FijiProcedure` profile defines how the FHIR `Procedure` resource is used to record current and historical procedures performed on or for a patient within the Fiji Healthcare Implementation Guide.\n\nA procedure is an activity performed on, with, or for a patient as part of the provision of healthcare or support services. Examples include surgical and diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modifications, and exercise.\n\nProcedures may be performed by healthcare professionals, service providers, friends or relatives, or by the patient themselves.\n\nThis profile constrains the standard FHIR `Procedure` resource to support consistent recording of procedure details, including the procedure performed, its status, the patient, the associated encounter and service request, the performers, the reasons for the procedure, the anatomical site, the outcome, and any complications.\n\n## Resource Details\n\n| Property | Value |\n|---|---|\n| Resource | `Procedure` |\n| Profile | `FijiProcedure` |\n| Profile ID | `fiji-procedure` |\n| Parent | `Procedure` |\n| Title | Fiji Healthcare Procedure |\n\n## Profile Elements\n\nThe following table describes the key elements defined or constrained by the profile. Cardinalities and terminology bindings reflect the supplied FSH.\n\n| Element | Cardinality | Type / Reference | Terminology Binding | Description |\n|---|---|---|---|---|\n| `basedOn` | 0..* | Reference(`FijiServiceRequest`) | — | References the service request(s) that authorised or initiated the procedure. |\n| `status` | 1..1 | Code | FHIR Procedure status codes | Indicates the current status of the procedure, such as preparation, in progress, completed, or not done. |\n| `category` | 0..1 | CodeableConcept | `$proc-cat-vs` (Preferred) | Classifies the procedure into a broader category, such as a surgical or diagnostic procedure. |\n| `code` | 1..1 | CodeableConcept | `$proc-code-ips-vs` (Preferred) | Identifies the specific procedure performed or intended, using an appropriate procedure code. |\n| `subject` | 1..1 | Reference(`FijiPatient`) | — | Identifies the patient on whom, with whom, or for whom the procedure was performed. |\n| `encounter` | 0..1 | Reference(`FijiEncounter`) | — | References the healthcare encounter associated with the procedure, when applicable. |\n| `performed[x]` | 0..1 | `dateTime`, `Period`, `string`, `Age`, `Range`, or `Timing` | — | Records when the procedure was performed or the period during which it took place. |\n| `performer` | 0..* | BackboneElement | — | Identifies the individuals or organisations involved in performing the procedure. |\n| `performer.actor` | — | Reference(`FijiPractitioner`, `FijiPractitionerRole`, `FijiOrganization`, or `FijiPatient`) | — | Identifies the person, role, organisation, or patient who performed the procedure. |\n| `reasonCode` | 0..* | CodeableConcept | `$proc-reason-vs` (Preferred) | Records the reason or clinical indication for performing the procedure. |\n| `bodySite` | 0..* | CodeableConcept | `FijiBodySiteVS` (Extensible) | Identifies the anatomical location on which the procedure was performed. |\n| `outcome` | 0..1 | CodeableConcept | `$proc-outcome-vs` (Preferred) | Records the outcome of the procedure, where known. |\n| `complication` | 0..* | CodeableConcept | `FijiConditionCodeVS` (Preferred) | Records complications associated with the procedure. |\n| `note` | 0..* | Annotation | — | Provides additional narrative information about the procedure. |\n\n## Implementation Guidance\n\n### Procedure Identification and Classification\n\nThe `code` element is mandatory and identifies the specific procedure. Implementations should use appropriate codes from the preferred `$proc-code-ips-vs` value set. The optional `category` element provides a broader classification using `$proc-cat-vs`.\n\n### Status and Timing\n\nThe `status` element is mandatory and indicates the lifecycle state of the procedure. The `performed[x]` element records the procedure's timing when available. Implementations should distinguish between a procedure that was completed, is in progress, or was not performed, using the appropriate status and timing information.\n\n### Patient, Encounter and Service Request References\n\nThe `subject` element must reference a `FijiPatient`. Where applicable, `encounter` links the procedure to a `FijiEncounter`, while `basedOn` links it to one or more `FijiServiceRequest` resources.\n\nThese references support traceability between the patient, the clinical encounter, the requested service, and the procedure performed.\n\n### Performers\n\nThe `performer` element records those involved in performing the procedure. The `performer.actor` reference is constrained to the following Fiji profiles:\n\n- `FijiPractitioner`\n- `FijiPractitionerRole`\n- `FijiOrganization`\n- `FijiPatient`\n\nThis allows procedures performed by healthcare professionals, healthcare organisations, or patients themselves to be represented.\n\n### Clinical Context and Anatomical Site\n\nThe `reasonCode` element captures the clinical reason or indication for the procedure. The `bodySite` element identifies the relevant anatomical site and uses the `FijiBodySiteVS` value set with an extensible binding.\n\nImplementations should record these elements when the information is relevant and available.\n\n### Outcomes and Complications\n\nThe optional `outcome` element records the result of the procedure using the preferred `$proc-outcome-vs` value set. The `complication` element allows one or more complications to be recorded using the preferred `FijiConditionCodeVS` value set.\n\n### Additional Notes\n\nThe `note` element supports narrative information that supplements the structured procedure data, such as relevant clinical observations or additional details about how the procedure was performed.\n\n## Conformance Requirements\n\n- The `status`, `code`, and `subject` elements are mandatory.\n- The `subject` must reference a `FijiPatient`.\n- The `basedOn` element, when present, must reference a `FijiServiceRequest`.\n- The `encounter` element, when present, must reference a `FijiEncounter`.\n- The `performer.actor` reference is restricted to the specified Fiji practitioner, practitioner role, organisation, or patient profiles.\n- Terminology bindings marked **Preferred** should be followed where suitable codes are available.\n- The `bodySite` binding is **Extensible**; other codes may be used when an appropriate concept is not available in the specified value set.\n- Elements marked Must Support (`MS`) are expected to be supported by conformant implementations in accordance with the implementation guide's Must Support requirements.\n",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-category"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/procedures-uv-ips"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
      }]
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }]
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-reason"
      }
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs"
      }
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-outcome"
      }
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-condition-code-vs"
      }
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "mustSupport" : true
    }]
  }
}

```
