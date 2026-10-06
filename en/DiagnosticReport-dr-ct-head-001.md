# Example CT Head Diagnostic Report - Draft Fiji Core Implementation Guide v0.2.1

## Example DiagnosticReport: Example CT Head Diagnostic Report

Profile: [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md)

## Computerized axial tomography of head (Radiology, Computed Tomography) 

| | |
| :--- | :--- |
| Subject | Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FJ-NHI-982345671) |
| Relevant Time | 2026-10-05 10:05:00+1200 |
| Reported | 2026-10-05 14:30:00+1200 |
| Performer | [Organization Suva Divisional Hospital](Organization-FijiOrganizationExample.md) |
| Identifier | [FijiRISAccessionNumber](NamingSystem-FijiRISAccessionNumber.md)/RIS-2026-001847 |
| Presented Form | application/pdf: JVBERi0xLjQK |

**Report Details**



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "dr-ct-head-001",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-imaging-diagnostic-report"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/NamingSystem/ris-accession-number",
    "value" : "RIS-2026-001847"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-ct-head-001"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "RAD",
      "display" : "Radiology"
    }]
  },
  {
    "coding" : [{
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "CT",
      "display" : "Computed Tomography"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "77477000",
      "display" : "Computerized axial tomography of head"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "encounter" : {
    "reference" : "Encounter/FijiEncounterExample"
  },
  "effectiveDateTime" : "2026-10-05T10:05:00+12:00",
  "issued" : "2026-10-05T14:30:00+12:00",
  "performer" : [{
    "reference" : "Organization/FijiOrganizationExample"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/FijiPractitionerExample"
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "language" : "en",
    "data" : "JVBERi0xLjQK",
    "title" : "CT Head Report",
    "creation" : "2026-10-05T14:30:00+12:00"
  }]
}

```
