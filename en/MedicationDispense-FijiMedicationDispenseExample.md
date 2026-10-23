# Fiji Amoxicillin Medication Dispense Example - Draft Fiji Core Implementation Guide v0.3.0

## Example MedicationDispense: Fiji Amoxicillin Medication Dispense Example

Profile: [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md)

**identifier**: [FijiMedicationDispenseIdentifier](NamingSystem-FijiMedicationDispenseIdentifier.md)/MSD-2026-000123

**status**: Completed

**medication**: Amoxicillin

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345)](Practitioner-FijiPractitionerExample.md) |

**authorizingPrescription**: [MedicationRequest: status = active; intent = order; medication[x] = Amoxicillin; authoredOn = 2026-10-20](MedicationRequest-FijiMedicationRequestExample.md)

**quantity**: 15 capsule (Details: UCUM code1 = '1')

**whenPrepared**: 2026-10-20 09:00:00+1200

**whenHandedOver**: 2026-10-20

### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | Take one capsule orally three times daily for 5 days. |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "FijiMedicationDispenseExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-dispense"]
  },
  "identifier" : [{
    "system" : "http://fhir.health.gov.fj/identifier/msupply-dispense",
    "value" : "MSD-2026-000123"
  }],
  "status" : "completed",
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
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/FijiPractitionerExample"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/FijiMedicationRequestExample"
  }],
  "quantity" : {
    "value" : 15,
    "unit" : "capsule",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenPrepared" : "2026-10-20T09:00:00+12:00",
  "whenHandedOver" : "2026-10-20",
  "dosageInstruction" : [{
    "text" : "Take one capsule orally three times daily for 5 days."
  }]
}

```
