# Condition Example - Type 2 Diabetes Mellitus - Draft Fiji Core Implementation Guide v0.9.0

## Example Condition: Condition Example - Type 2 Diabetes Mellitus

Profile: [Fiji Condition](StructureDefinition-fiji-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**severity**: Moderate severity

**code**: Type 2 diabetes mellitus

**bodySite**: Pancreas

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**onset**: 2024-03-15

### Evidences

| | |
| :--- | :--- |
| - | **Code** |
| * | Hemoglobin A1c above reference range |

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
      "display" : "Moderate severity"
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
      "code" : "15776009",
      "display" : "Pancreas"
    }]
  }],
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "onsetDateTime" : "2024-03-15",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "444751005",
        "display" : "Hemoglobin A1c above reference range"
      }]
    }]
  }],
  "note" : [{
    "text" : "Type 2 diabetes mellitus diagnosed following elevated blood glucose and HbA1c results."
  }]
}

```
