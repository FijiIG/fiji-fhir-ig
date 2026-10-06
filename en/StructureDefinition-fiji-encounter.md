# Fiji Healthcare Encounter - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Healthcare Encounter 

**Usages:**

* Refer to this Profile: [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md), [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md), [Fiji Immunization](StructureDefinition-fiji-immunization.md), [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md)... Show 9 more, [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md), [BMI Vitals - Fiji](StructureDefinition-fiji-vital-bmi.md), [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md), [Head circumference Vitals - Fiji](StructureDefinition-fiji-vital-head-circumference.md), [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md), [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md), [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md), [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md) and [Weight Vitals - Fiji](StructureDefinition-fiji-vital-weight.md)
* Examples for this Profile: [Encounter/FijiEncounterExample](Encounter-FijiEncounterExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-encounter.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-encounter.csv), [Excel](../StructureDefinition-fiji-encounter.xlsx), [Schematron](../StructureDefinition-fiji-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-encounter",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter",
  "version" : "0.2.1",
  "name" : "FijiEncounter",
  "title" : "Fiji Healthcare Encounter",
  "status" : "draft",
  "date" : "2026-10-06T07:16:04+00:00",
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
  "description" : "## Fiji Healthcare Encounter\n\nThe **Fiji Healthcare Encounter** profile represents an interaction between a patient and the healthcare system in which healthcare services are provided. It is based on the FHIR `Encounter` resource and is intended to support the recording of clinical encounters within the scope of this Implementation Guide.\n\nThe profile constrains the patient, encounter classification, service type, participants, timing, reasons for the encounter, locations, and responsible healthcare organisation. Where appropriate, references are restricted to the corresponding Fiji profiles.\n\n### Key Elements\n\n| Element | Cardinality | Type / Binding | Description |\n|---|---:|---|---|\n| `identifier` | 0..* | Identifier | Business identifier(s) assigned to the encounter, such as a facility encounter number or local medical record number. |\n| `status` | **1..1** | Code | Current status of the encounter, such as planned, in-progress, finished, or cancelled. |\n| `class` | **1..1** | `FijiEncounterClassVS` | Classification of the encounter, for example inpatient, outpatient, emergency, or ambulatory care. |\n| `serviceType` | 0..* | `FijiServiceTypeVS` (preferred) | The type of healthcare service provided during the encounter. |\n| `subject` | **1..1** | Reference(`FijiPatient`) | The patient who is the subject of the encounter. |\n| `participant.type` | 0..* | `$participant-type-vs` | Identifies the role or function of a participant in the encounter, such as attending clinician or consultant. |\n| `participant.individual` | 0..1 | Reference(`FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`) | Identifies the person participating in the encounter. |\n| `period` | 0..1 | Period | The date and time during which the encounter took place or is expected to take place. |\n| `reasonCode` | 0..* | `FijiEncounterReasonVS` (preferred) | Coded reason for the encounter, such as a presenting complaint, clinical problem, or other reason for seeking care. |\n| `reasonReference` | 0..* | Reference(`FijiCondition` or `FijiProcedure`) | References a condition or procedure that is the reason for the encounter. |\n| `location.location` | 0..1 | Reference(`FijiLocation`) | The physical location where the encounter occurred. |\n| `serviceProvider` | 0..1 | Reference(`FijiOrganization`) | The organisation responsible for providing the healthcare services associated with the encounter. |\n\n### Encounter Classification\n\nThe `class` element is mandatory and is bound to the **`$enc-class-vs`** value set. This identifies the broad setting or classification of the encounter and should be used consistently to distinguish, for example, inpatient, outpatient, emergency, and other forms of healthcare delivery.\n\n### Service Type\n\n`serviceType` identifies the specific type of healthcare service being provided. It is bound with a **preferred** binding to `FijiServiceTypeVS`, allowing implementations to use the Fiji-defined terminology where applicable while permitting other codes where necessary.\n\n### Patient and Participants\n\nThe `subject` element is mandatory and is restricted to a reference to a `FijiPatient`.\n\nEncounter participants may be recorded using `participant.type` to describe their role and `participant.individual` to identify the participating person. Participants are restricted to a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`.\n\n### Reason for Encounter\n\nThe reason for the encounter can be represented using either:\n\n- `reasonCode` for a coded reason that does not require a reference to another resource; or\n- `reasonReference` when the reason is represented by an existing `FijiCondition` or `FijiProcedure` resource.\n\nThe `reasonCode` element has a preferred binding to `FijiEncounterReasonVS`.\n\n### Location and Service Provider\n\nThe `location.location` element identifies where the encounter occurred and is restricted to a `FijiLocation`.\n\nThe `serviceProvider` identifies the organisation responsible for the healthcare service and is restricted to a `FijiOrganization`.\n\n### Terminology Bindings\n\n| Element | Value Set | Binding |\n|---|---|---|\n| `class` | `$enc-class-vs` | **Required** |\n| `serviceType` | `FijiServiceTypeVS` | **Preferred** |\n| `participant.type` | `$participant-type-vs` | **Required** |\n| `reasonCode` | `FijiEncounterReasonVS` | **Preferred** |\n\n### Relationship to Other Resources\n\nA `FijiEncounter` may be associated with other clinical and administrative resources, including:\n\n- **Patient** – identifies the patient receiving care.\n- **Practitioner / PractitionerRole** – identifies healthcare professionals involved in the encounter.\n- **RelatedPerson** – identifies other people participating in the patient's care.\n- **Condition** – may identify a condition that is the reason for the encounter.\n- **Procedure** – may identify a procedure associated with or motivating the encounter.\n- **Location** – identifies where care was provided.\n- **Organization** – identifies the healthcare organisation responsible for the encounter.\n\nThis profile is currently **work in progress** and may be subject to further refinement as encounter requirements for the Fiji implementation are established.",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
      }
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-service-type-vs"
      }
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-participant-type"
      }
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-related-person"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-encounter-reason-vs"
      }
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-condition",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-location"]
      }]
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }]
    }]
  }
}

```
