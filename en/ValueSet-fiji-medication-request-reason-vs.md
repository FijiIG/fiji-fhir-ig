# MedicationRequest reason code valueset - Draft Fiji Core Implementation Guide v0.9.0

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
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.13"
  }],
  "version" : "0.9.0",
  "name" : "FijiMedicationRequestReasonVS",
  "title" : "MedicationRequest reason code valueset",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-13T04:51:51+00:00",
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
        "property" : "constraint",
        "op" : "=",
        "value" : "^ 32570581000036105"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 404684003 AND ^ 816080008"
      }]
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10-am"
    }]
  }
}

```
