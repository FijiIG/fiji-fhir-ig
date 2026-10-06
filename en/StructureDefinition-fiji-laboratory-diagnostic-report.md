# Fiji Laboratory Diagnostic Report - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Laboratory Diagnostic Report 

**Usages:**

* Examples for this Profile: [DiagnosticReport/ExampleLipidPanelReport](DiagnosticReport-ExampleLipidPanelReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-laboratory-diagnostic-report.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-laboratory-diagnostic-report.csv), [Excel](../StructureDefinition-fiji-laboratory-diagnostic-report.xlsx), [Schematron](../StructureDefinition-fiji-laboratory-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-laboratory-diagnostic-report",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-laboratory-diagnostic-report",
  "version" : "0.2.1",
  "name" : "FijiLaboratoryDiagnosticReport",
  "title" : "Fiji Laboratory Diagnostic Report",
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
  "description" : "## Fiji Pathology DiagnosticReport\n\nThe **Fiji Pathology DiagnosticReport** profile defines the representation of a pathology diagnostic report in the Fiji FHIR Implementation Guide. It is based on the FHIR `DiagnosticReport` resource and is intended to provide a structured representation of pathology investigations and their results.\n\nA pathology diagnostic report provides a summary of the investigation performed, identifies the patient and relevant specimens, records the clinicians or organisations responsible for the report, and links to the individual pathology observations that comprise the report.\n\nThe profile requires a report identifier, a pathology service category, a coded description of the investigation, the patient, the clinically relevant date/time, and at least one pathology result. Where applicable, the report can also reference the `ServiceRequest` that initiated the investigation and the `Specimen` used for testing.\n\n### Key Elements\n\n| Element | Cardinality | Description |\n|---|---:|---|\n| `identifier` | **1..*** | Business identifier(s) for the diagnostic report. At least one identifier is required to allow the report to be uniquely identified within the relevant pathology system. |\n| `basedOn` | 0..* | References the `ServiceRequest` that initiated or authorised the pathology investigation. References are constrained to `FijiServiceRequest`. |\n| `status` | **1..1** | Indicates the current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |\n| `category` | **1..1** | Identifies the type of diagnostic service. This profile fixes the category to the laboratory value `LAB` from the diagnostic service category code system. |\n| `code` | **1..1** | Coded description of the pathology investigation or diagnostic service being reported. The code is bound to `ObsVS` with a preferred binding. |\n| `subject` | **1..1** | Identifies the patient who is the subject of the pathology investigation. References are constrained to `FijiPatient`. |\n| `effective[x]` | **1..1** | Records the clinically relevant date/time or period for the pathology investigation, such as the time the specimen was collected or the investigation was performed. |\n| `issued` | **1..1** | Date and time at which the diagnostic report was issued and made available. |\n| `performer` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for performing the pathology investigation. References are constrained to `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization`. |\n| `resultsInterpreter` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for interpreting or reviewing the pathology results. References are constrained to `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization`. |\n| `specimen` | 0..* | Identifies the specimen(s) on which the pathology investigation was performed. References are constrained to `FijiSpecimen`. |\n| `result` | **1..*** | References the individual pathology observations that make up the diagnostic report. References are constrained to `FijiPathologyObservation`. At least one result is required. |\n| `presentedForm` | **1..*** | Provides the complete report in an electronically presentable format, such as a PDF document. At least one presented form is required. |\n| `presentedForm.contentType` | **1..1** | Specifies the MIME type of the presented report, such as `application/pdf`. |\n| `presentedForm.data` | **1..1** | Contains the report content encoded as `base64Binary`. |\n| `presentedForm.language` | 0..1 | Identifies the language in which the presented report is written. The value is bound to the `$lang-vs` language ValueSet. |\n\n### Relationships to Other Resources\n\nThe profile establishes the following important relationships:\n\n- **ServiceRequest** — `basedOn` links the diagnostic report to the request that initiated the pathology investigation.\n- **Patient** — `subject` identifies the patient for whom the report was produced.\n- **Specimen** — `specimen` identifies the biological specimen(s) examined.\n- **Pathology Observation** — `result` links the report to the individual pathology results and measurements.\n- **Practitioner / PractitionerRole / Organization** — `performer` identifies the party responsible for performing the investigation, while `resultsInterpreter` identifies the party responsible for interpreting or reviewing the results.\n\n### Report Presentation\n\nThe `presentedForm` element is mandatory and is intended to support exchange of the complete human-readable pathology report in addition to the structured FHIR representation. The profile requires the content type and report data to be present. The language may also be specified using the language ValueSet defined for the Fiji Implementation Guide.\n\nThe structured `result` references should be used for individual pathology findings and values, while `presentedForm` provides the complete report as a document for presentation or archival purposes.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/obs-vs"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-specimen"]
      }]
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.contentType",
      "path" : "DiagnosticReport.presentedForm.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.language",
      "path" : "DiagnosticReport.presentedForm.language",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.org/fhir/R4/valueset-languages"
      }
    },
    {
      "id" : "DiagnosticReport.presentedForm.data",
      "path" : "DiagnosticReport.presentedForm.data",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
