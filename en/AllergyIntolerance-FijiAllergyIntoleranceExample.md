# Fiji AllergyIntolerance Example - Draft Fiji Core Implementation Guide v0.2.1

## Example AllergyIntolerance: Fiji AllergyIntolerance Example

Profile: [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md)

**clinicalStatus**: active

**verificationStatus**: confirmed

**type**: Allergy

**category**: Medication

**criticality**: High Risk

**code**: Penicillin

**patient**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**onset**: 2024-06-15

**recorder**: [Patient/FijiPractitionerExample](Patient/FijiPractitionerExample)

**note**: 

> 

Patient reports a previous allergic reaction to penicillin.


### Reactions

| | | |
| :--- | :--- | :--- |
| - | **Manifestation** | **Severity** |
| * | Anaphylaxis | Severe |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "FijiAllergyIntoleranceExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "code" : "confirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "91936005",
      "display" : "Penicillin"
    }]
  },
  "patient" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "onsetDateTime" : "2024-06-15",
  "recorder" : {
    "reference" : "Patient/FijiPractitionerExample"
  },
  "note" : [{
    "text" : "Patient reports a previous allergic reaction to penicillin."
  }],
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "39579001",
        "display" : "Anaphylaxis"
      }]
    }],
    "severity" : "severe"
  }]
}

```
