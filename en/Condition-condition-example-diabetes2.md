# Condition Example - Type 2 Diabetes Mellitus - Draft Fiji Core Implementation Guide v0.2.1

## Example Condition: Condition Example - Type 2 Diabetes Mellitus

Profile: [Fiji Condition](StructureDefinition-fiji-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**severity**: Moderate

**code**: Type 2 diabetes mellitus

**bodySite**: Structure of pancreas

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**onset**: 2024-03-15

**abatement**: 2025-01-20

### Evidences

| | |
| :--- | :--- |
| - | **Code** |
| * | Finding of endocrine system |

**note**: 

> 

Type 2 diabetes mellitus diagnosed following elevated blood glucose and HbA1c results.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-example-diabetes2",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6736007",
      "display" : "Moderate"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Type 2 diabetes mellitus"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "81745001",
      "display" : "Structure of pancreas"
    }]
  }],
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "onsetDateTime" : "2024-03-15",
  "abatementDateTime" : "2025-01-20",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "365826001",
        "display" : "Finding of endocrine system"
      }]
    }]
  }],
  "note" : [{
    "text" : "Type 2 diabetes mellitus diagnosed following elevated blood glucose and HbA1c results."
  }]
}

```
