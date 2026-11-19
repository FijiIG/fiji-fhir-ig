# Example Lipid Panel Specimen - Draft Fiji Core Implementation Guide v0.9.0

## Example Specimen: Example Lipid Panel Specimen

**status**: Available

**type**: Serum specimen

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)

**receivedTime**: 2026-09-23 09:15:00+1200

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **BodySite** |
| * | 2026-09-23 08:45:00+1200 | Forearm structure |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "ExampleLipidSpecimen",
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119364003",
      "display" : "Serum specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  },
  "receivedTime" : "2026-09-23T09:15:00+12:00",
  "collection" : {
    "collectedDateTime" : "2026-09-23T08:45:00+12:00",
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "14975008",
        "display" : "Forearm structure"
      }]
    }
  }
}

```
