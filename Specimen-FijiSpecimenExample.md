# Fiji Specimen Placeholder Example - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Specimen Placeholder Example**

## Example Specimen: Fiji Specimen Placeholder Example

Profile: [Fiji Specimen](StructureDefinition-fiji-specimen.md)

**status**: Unavailable

**type**: Whole body

**subject**: [Jone Nabou Male, DoB: 1992-04-17 ( http://fhir.health.gov.fj/identifier/national-health-number#FijiPatientIdentifier#FJ-NHI-982345671)](Patient-FijiPatientExample.md)



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "FijiSpecimenExample",
  "meta" : {
    "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-specimen"]
  },
  "status" : "unavailable",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0487",
      "code" : "BDY"
    }]
  },
  "subject" : {
    "reference" : "Patient/FijiPatientExample"
  }
}

```
