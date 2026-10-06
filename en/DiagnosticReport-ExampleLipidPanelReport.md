# Example Lipid Panel Report - Draft Fiji Core Implementation Guide v0.2.1

## Example DiagnosticReport: Example Lipid Panel Report

Profile: [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md)

## Lipid panel (Laboratory) 

| | |
| :--- | :--- |
| Subject | Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FJ-NHI-982345671) |
| Relevant Time | 2026-09-23 09:00:00+1200 |
| Reported | 2026-09-23 12:00:00+1200 |
| Identifier | 1234abcd |
| Presented Form | application/pdf: JVBERi0xLjQK |

**Report Details**

* **Code**: [Lipid panel](Observation-ExampleLipidPanel.md)
  * **Value**: 
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "ExampleLipidPanelReport",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-laboratory-diagnostic-report"]
  },
  "identifier" : [{
    "value" : "1234abcd"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "24331-1",
      "display" : "Lipid panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "effectiveDateTime" : "2026-09-23T09:00:00+12:00",
  "issued" : "2026-09-23T12:00:00+12:00",
  "result" : [{
    "reference" : "Observation/ExampleLipidPanel"
  }],
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "language" : "en",
    "data" : "JVBERi0xLjQK",
    "title" : "Lipid Panel Report",
    "creation" : "2026-08-05T14:30:00+12:00"
  }]
}

```
