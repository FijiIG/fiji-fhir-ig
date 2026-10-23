# Fiji Medication Request Example - Draft Fiji Core Implementation Guide v0.3.0

## Example MedicationRequest: Fiji Medication Request Example

Profile: [Fiji Medication Request](StructureDefinition-fiji-medication-request.md)

**status**: Active

**intent**: Order

**medication**: Amoxicillin

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**authoredOn**: 2026-10-20

**requester**: [Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345)](Practitioner-FijiPractitionerExample.md)

### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | Take one capsule orally three times daily for 5 days. |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "FijiMedicationRequestExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-request"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "27658006",
      "display" : "Amoxicillin"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "authoredOn" : "2026-10-20",
  "requester" : {
    "reference" : "Practitioner/FijiPractitionerExample"
  },
  "dosageInstruction" : [{
    "text" : "Take one capsule orally three times daily for 5 days."
  }]
}

```
