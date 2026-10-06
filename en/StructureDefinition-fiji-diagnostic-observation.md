# Fiji Diagnostic Observation - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Diagnostic Observation 

**Usages:**

* Refer to this Profile: [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md)
* Examples for this Profile: [Observation/FijiDiagnosticObservationChestXrayReport](Observation-FijiDiagnosticObservationChestXrayReport.md), [Observation/FijiDiagnosticObservationPleuralEffusion](Observation-FijiDiagnosticObservationPleuralEffusion.md) and [Observation/FijiDiagnosticObservationPulmonaryConsolidation](Observation-FijiDiagnosticObservationPulmonaryConsolidation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-diagnostic-observation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-diagnostic-observation.csv), [Excel](../StructureDefinition-fiji-diagnostic-observation.xlsx), [Schematron](../StructureDefinition-fiji-diagnostic-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-diagnostic-observation",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation",
  "version" : "0.2.1",
  "name" : "FijiDiagnosticObservation",
  "title" : "Fiji Diagnostic Observation",
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
  "description" : "## Fiji Diagnostic Observation\n\nThe **Fiji Diagnostic Observation** profile represents an individual observation or finding produced as part of a radiology or other diagnostic investigation. It is based on the FHIR `Observation` resource and provides constraints and terminology bindings appropriate for diagnostic results in Fiji.\n\nThe profile is intended to support the representation of individual diagnostic findings, including coded radiology findings, anatomical locations, performers, and component observations.\n\n### Key Elements\n\n| Element | Cardinality | Description |\n|---|---:|---|\n| `status` | 1..1 | The status of the diagnostic observation, indicating whether the result is preliminary, final, amended, or has another applicable status. |\n| `category` | 1..* | Classifies the observation as belonging to a diagnostic service or discipline. Bound to the FHIR Diagnostic Service Sections value set with a preferred binding. |\n| `code` | 1..1 | Identifies the type of diagnostic finding or observation. Bound to the Fiji Radiology Findings Value Set with a preferred binding. |\n| `subject` | 1..1 | Identifies the patient who is the subject of the diagnostic observation. Restricted to `FijiPatient`. |\n| `effective[x]` | 1..1 | The clinically relevant date/time or period associated with the observation. |\n| `performer` | 0..* | Identifies the individual or organisation responsible for performing or producing the observation. Restricted to a Fiji patient, practitioner, practitioner role, or organisation. |\n| `value[x]` | 0..1 | The result of the diagnostic observation. The type of value is determined by the nature of the observation. |\n| `dataAbsentReason` | 0..1 | Provides a reason when a result is not available. Bound to the FHIR Data Absent Reason value set with an extensible binding. |\n| `bodySite` | 0..1 | Identifies the anatomical site associated with the diagnostic observation. Bound to the Fiji Body Site Value Set with an extensible binding. |\n| `hasMember` | 0..* | References other diagnostic observations that are related to or form part of this observation. References are restricted to `FijiDiagnosticObservation`. |\n| `component` | 0..* | Represents component observations that form part of the diagnostic observation. |\n| `component.code` | 1..1 | Identifies the type of the component observation. |\n| `component.value[x]` | 0..1 | The result of the component observation. |\n| `component.dataAbsentReason` | 0..1 | Provides a reason when the value of a component observation is not available. |\n\n### Terminology Bindings\n\n| Element | Value Set | Binding | Purpose |\n|---|---|---|---|\n| `category` | Diagnostic Service Sections | Preferred | Identifies the diagnostic service or discipline associated with the observation. |\n| `code` | `FijiRadiologyFindingsVS` | Preferred | Identifies the diagnostic finding or observation using relevant SNOMED CT concepts. |\n| `dataAbsentReason` | FHIR Data Absent Reason | Extensible | Provides a standard reason when an observation result is unavailable. |\n| `bodySite` | `FijiBodySiteVS` | Extensible | Identifies the anatomical or acquired body structure associated with the observation using SNOMED CT. |\n\n### Diagnostic Finding Code\n\nThe `code` element identifies the diagnostic finding represented by the observation and is bound to `FijiRadiologyFindingsVS`.\n\nThe value set is defined using SNOMED CT concepts that are both clinical findings and associated with imaging procedures:\n\n`descendant-of 404684003 |Clinical finding| AND descendant-of 363679005 |Imaging procedure|`\n\nThis provides a terminology-based approach to identifying findings relevant to radiology and imaging rather than maintaining a fixed list of individual concepts.\n\n### Body Site\n\nWhere applicable, `bodySite` identifies the anatomical location to which the diagnostic observation relates. The element is bound to `FijiBodySiteVS` using an extensible binding.\n\nThe value set is based on SNOMED CT anatomical or acquired body structure concepts:\n\n`< 442083009 |Anatomical or acquired body structure (body structure)|`\n\nThis allows standard SNOMED CT concepts to be used to represent the anatomical site while allowing additional concepts where required.\n\n### Component Observations\n\nThe `component` element may be used when a diagnostic observation contains additional observations that are integral to the main observation. Each component must have a `code` identifying what is being observed and may contain either a result in `value[x]` or a `dataAbsentReason` when the result is unavailable.\n\nComponents are appropriate where the individual results form part of a single overall observation and do not need to be represented as separate resources.\n\n### Related Diagnostic Observations\n\nThe `hasMember` element may be used to associate the observation with other diagnostic observations. References are restricted to `FijiDiagnosticObservation`, supporting the representation of groups of related diagnostic findings.\n\nFor example, a diagnostic observation may use `hasMember` to reference separate observations representing individual findings from the same diagnostic investigation.\n\n### Missing Results\n\nBoth the main observation and its components support `dataAbsentReason`. This should be used when a result that would otherwise be represented in `value[x]` is not available, rather than leaving the reason for the missing result implicit.\n\nThe profile uses the standard FHIR Data Absent Reason value set with an **extensible** binding.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/diagnostic-service-sections"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-radiology-findings-vs"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/data-absent-reason"
      }
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-site-vs"
      }
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "mustSupport" : true
    }]
  }
}

```
