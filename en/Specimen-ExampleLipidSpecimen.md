# Example Lipid Panel Specimen - Draft Fiji Core Implementation Guide v0.2.1

## Example Specimen: Example Lipid Panel Specimen

**status**: final

**type**: Serum specimen

**subject**: [Patient/FijiExamplePatient](Patient/FijiExamplePatient)

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
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119364003",
      "display" : "Serum specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiExamplePatient"
  },
  "receivedTime" : "2026-09-23T09:15:00+12:00",
  "collection" : {
    "collectedDateTime" : "2026-09-23T08:45:00+12:00",
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "82094008",
        "display" : "Forearm structure"
      }]
    }
  }
}

```
