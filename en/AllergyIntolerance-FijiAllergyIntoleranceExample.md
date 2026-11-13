# Fiji AllergyIntolerance Example - Draft Fiji Core Implementation Guide v0.9.0

## Example AllergyIntolerance: Fiji AllergyIntolerance Example

Profile: [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Medication

**criticality**: High Risk

**code**: Allergy to penicillin

**patient**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**onset**: 2024-06-15

**recorder**: [Jone Nabose (http://fhir.health.gov.fj/identifier/practitioner-medical-registration#FijiPractitionerMedicalRegistrationNumber#MED-12345)](Practitioner-FijiPractitionerExample.md)

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
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
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
      "display" : "Allergy to penicillin"
    }]
  },
  "patient" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "onsetDateTime" : "2024-06-15",
  "recorder" : {
    "reference" : "Practitioner/FijiPractitionerExample"
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
