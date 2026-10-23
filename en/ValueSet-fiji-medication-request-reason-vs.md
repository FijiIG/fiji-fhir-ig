# MedicationRequest reason code valueset - Draft Fiji Core Implementation Guide v0.3.0

## ValueSet: MedicationRequest reason code valueset 

 **References** 

* [Fiji Medication Request](StructureDefinition-fiji-medication-request.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-medication-request-reason-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-medication-request-reason-vs",
  "version" : "0.3.0",
  "name" : "FijiMedicationRequestReasonVS",
  "title" : "MedicationRequest reason code valueset",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-23T04:23:18+00:00",
  "publisher" : "MHMS Fiji",
  "contact" : [{
    "name" : "MHMS Fiji",
    "telecom" : [{
      "system" : "url",
      "value" : "https://fhir.health.gov.fj"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fhir.health.gov.fj"
    }]
  }],
  "description" : "MedicationRequest reason valueset for Fiji Core. \nProposed valueset is taken from SNOMED Problem/Diagnosis refsets.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "^ 32570581000036105|Problem/Diagnosis reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 404684003 |Clinical finding| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10-am"
    }]
  }
}

```
