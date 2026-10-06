# Example CT Head Service Request - Draft Fiji Core Implementation Guide v0.2.1

## Example ServiceRequest: Example CT Head Service Request

Profile: [Fiji Healthcare Service Request](StructureDefinition-fiji-service-request.md)

**identifier**: sr-ct-head-001

**status**: Completed

**intent**: Order

**priority**: Routine

**code**: Computerized axial tomography of head

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/nhi#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**encounter**: [Encounter: identifier = https://fhir.health.gov.fj/encounter#ENC-2026-000123; status = finished; class = ambulatory (ActCode#AMB); type = Patient encounter procedure; period = 2026-09-09 09:00:00+1000 --> 2026-09-09 09:30:00+1000; reasonCode = Fever](Encounter-FijiEncounterExample.md)

**authoredOn**: 2026-10-05 09:15:00+1200

**requester**: [Practitioner/FijiPractitionerExample](Practitioner/FijiPractitionerExample)

**reasonCode**: Headache



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-ct-head-001",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-service-request"]
  },
  "identifier" : [{
    "value" : "sr-ct-head-001"
  }],
  "status" : "completed",
  "intent" : "order",
  "priority" : "routine",
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
  "authoredOn" : "2026-10-05T09:15:00+12:00",
  "requester" : {
    "reference" : "Practitioner/FijiPractitionerExample"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "25064002",
      "display" : "Headache"
    }]
  }]
}

```
