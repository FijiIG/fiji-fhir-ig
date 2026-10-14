# Example outpatient encounter - Draft Fiji Core Implementation Guide v0.2.2

## Example Encounter: Example outpatient encounter

Profile: [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md)

**identifier**: `https://fhir.health.gov.fj/encounter`/ENC-2026-000123

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Outpatient consultation

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | primary performer | [Jone Nabose (https://fhir.health.gov.fj/identifier/practitioner-medical-registration#MED-12345)](Practitioner-FijiPractitionerExample.md) |

**period**: 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000

**reasonCode**: Fever

### Locations

| | | |
| :--- | :--- | :--- |
| - | **Location** | **Status** |
| * | [Location/FijiLocationExample](Location/FijiLocationExample) | Completed |

**serviceProvider**: [Suva Divisional Hospital (http://fhir.health.gov.fj/identifier/organization#FijiOrganizationIdentifier#FJ-HOSP-SUH-001)](Organization-FijiOrganizationExample.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "FijiEncounterExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"]
  },
  "identifier" : [{
    "system" : "https://fhir.health.gov.fj/encounter",
    "value" : "ENC-2026-000123"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "308335008",
      "display" : "Patient encounter procedure"
    }],
    "text" : "Outpatient consultation"
  }],
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PPRF",
        "display" : "primary performer"
      }]
    }],
    "individual" : {
      "reference" : "Practitioner/FijiPractitionerExample"
    }
  }],
  "period" : {
    "start" : "2026-09-09T09:00:00+10:00",
    "end" : "2026-09-09T09:30:00+10:00"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "386661006",
      "display" : "Fever"
    }],
    "text" : "Fever"
  }],
  "location" : [{
    "location" : {
      "reference" : "Location/FijiLocationExample"
    },
    "status" : "completed"
  }],
  "serviceProvider" : {
    "reference" : "Organization/FijiOrganizationExample"
  }
}

```
