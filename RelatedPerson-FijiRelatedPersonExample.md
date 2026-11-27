# Fiji Related Person Placeholder Example - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Related Person Placeholder Example**

## Example RelatedPerson: Fiji Related Person Placeholder Example

Profile: [Fiji Healthcare Related Person](StructureDefinition-fiji-related-person.md)

Anonymous Related Person

-------

| | |
| :--- | :--- |
| Active: | false |
| Patient: | [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md) |



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "FijiRelatedPersonExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-related-person"]
  },
  "active" : false,
  "patient" : {
    "reference" : "Patient/FijiPatientExample"
  }
}

```
