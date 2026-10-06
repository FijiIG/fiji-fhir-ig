# Fiji Imaging Diagnostic Report - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Imaging Diagnostic Report 

**Usages:**

* Examples for this Profile: [DiagnosticReport/dr-ct-head-001](DiagnosticReport-dr-ct-head-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-imaging-diagnostic-report.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-imaging-diagnostic-report.csv), [Excel](../StructureDefinition-fiji-imaging-diagnostic-report.xlsx), [Schematron](../StructureDefinition-fiji-imaging-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-imaging-diagnostic-report",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-imaging-diagnostic-report",
  "version" : "0.2.1",
  "name" : "FijiImagingDiagnosticReport",
  "title" : "Fiji Imaging Diagnostic Report",
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
  "description" : "### Fiji Imaging Diagnostic Report\n\nThe **Fiji Imaging Diagnostic Report** profile represents a diagnostic report for imaging examinations performed within Fiji health information systems. It is based on the FHIR `DiagnosticReport` resource and provides additional constraints to support interoperability between radiology information systems (RIS), imaging systems, and other health information systems.\n\nThe profile requires each report to have a **RIS Accession Number**, which provides a unique identifier for the imaging examination within the radiology workflow. The report may also reference one or more `ServiceRequest` resources through `basedOn`, allowing the report to be linked to the request or referral that initiated the examination.\n\nThe `category` element supports both **HL7 diagnostic service classification** and **DICOM modality classification**. These are represented as separate slices so that an implementation can provide either or both classifications. This allows the profile to accommodate systems that use HL7 terminology, DICOM terminology, or both.\n\nThe `code` element identifies the type of imaging diagnostic report and is bound to the Fiji radiology findings value set. The patient, encounter, report timing, performers, interpreters, and report presentation are also constrained to support consistent exchange of imaging results.\n\n### Key Elements\n\n| Element | Cardinality | Description |\n|---|---:|---|\n| `identifier` | 1..* | Identifiers for the diagnostic report. The identifier list must contain one RIS Accession Number. |\n| `identifier[risAccession]` | 1..1 | The RIS Accession Number assigned to the imaging examination. |\n| `identifier[risAccession].system` | 1..1 | Fixed to the Fiji RIS Accession Number NamingSystem. |\n| `identifier[risAccession].value` | 1..1 | The accession number assigned by the radiology information system. |\n| `basedOn` | 0..* | References the service request(s) that resulted in the imaging examination. References are restricted to `FijiServiceRequest`. |\n| `status` | 1..1 | The current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |\n| `category` | 1..* | Classification of the diagnostic service and/or imaging modality associated with the report. |\n| `category[hl7DiagnosticService]` | 0..1 | HL7 diagnostic service classification. Uses the HL7 diagnostic service value set. |\n| `category[dicomModality]` | 0..1 | DICOM modality classification. Uses the Fiji DICOM Modality value set. |\n| `code` | 1..1 | Code identifying the type of imaging diagnostic report or examination. Bound to `FijiRadiologyFindingsVS` with a preferred binding. |\n| `subject` | 1..1 | The patient to whom the report relates. Restricted to `FijiPatient`. |\n| `encounter` | 0..1 | The healthcare encounter associated with the imaging examination. Restricted to `FijiEncounter`. |\n| `effective[x]` | 1..1 | The clinically relevant time or period of the imaging examination. |\n| `issued` | 1..1 | The date and time at which the diagnostic report was issued. |\n| `performer` | 0..* | The organisation, practitioner, or practitioner role responsible for performing the imaging examination or producing the report. |\n| `resultsInterpreter` | 0..* | The practitioner, practitioner role, or organisation responsible for interpreting the imaging results. |\n| `presentedForm` | 1..* | The report as a human-readable or otherwise presentable document, such as a PDF. |\n| `presentedForm.contentType` | 1..1 | MIME type of the presented report, such as `application/pdf`. |\n| `presentedForm.data` | 1..1 | The report content encoded as base64 data. |\n| `presentedForm.language` | 0..1 | Language of the presented report, using the FHIR language value set. |\n\n### Imaging Modality and Diagnostic Service\n\nThe `category` element uses open slicing to allow both HL7 and DICOM classifications to be represented independently:\n\n- **HL7 Diagnostic Service** identifies the type of diagnostic service that produced the report.\n- **DICOM Modality** identifies the imaging modality used to acquire the examination, such as CT, MR, CR, or ultrasound.\n\nBoth slices are optional individually, but at least one `category` element is required. Implementations are encouraged to provide both classifications where they are available.\n\nThis approach avoids combining multiple modality codes into a single code or comma-separated value and allows multiple classifications to be represented using standard FHIR coding structures.\n\n### Report Presentation\n\nAt least one `presentedForm` is required so that the diagnostic report can be exchanged in a human-readable or otherwise renderable form. The content type and encoded data are required. Where appropriate, implementations may provide the final report as a PDF document using `application/pdf`.\n\nThe `language` element may be populated to identify the language used in the presented report.",
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
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.identifier:risAccession",
      "path" : "DiagnosticReport.identifier",
      "sliceName" : "risAccession",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier:risAccession.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1,
      "patternUri" : "http://fhir.health.gov.fj/NamingSystem/ris-accession-number",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier:risAccession.value",
      "path" : "DiagnosticReport.identifier.value",
      "min" : 1,
      "mustSupport" : true
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
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category:hl7DiagnosticService",
      "path" : "DiagnosticReport.category",
      "sliceName" : "hl7DiagnosticService",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/diagnostic-service-sections"
      }
    },
    {
      "id" : "DiagnosticReport.category:hl7DiagnosticService.coding.system",
      "path" : "DiagnosticReport.category.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0074"
    },
    {
      "id" : "DiagnosticReport.category:dicomModality",
      "path" : "DiagnosticReport.category",
      "sliceName" : "dicomModality",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-dcm-modality-vs"
      }
    },
    {
      "id" : "DiagnosticReport.category:dicomModality.coding.system",
      "path" : "DiagnosticReport.category.coding.system",
      "min" : 1,
      "patternUri" : "http://dicom.nema.org/resources/ontology/DCM"
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/fiji-radiology-findings-vs"
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
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
      }]
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
