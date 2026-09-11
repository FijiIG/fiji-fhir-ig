# Fiji Medication and Vaccine Route Value Set - Draft Fiji Core Implementation Guide v0.2.0

## ValueSet: Fiji Medication and Vaccine Route Value Set 

 
Valueset for medication and vaccine route. Used for Medications and Immunization.route Values are descendants from SNOMED CT Route of Administration concept. 

 **References** 

* [Fiji Immunization](StructureDefinition-fiji-immunization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-medication-route-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-medication-route-vs",
  "version" : "0.2.0",
  "name" : "FijiMedicationRouteVS",
  "title" : "Fiji Medication and Vaccine Route Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T02:30:38+00:00",
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
  "description" : "Valueset for medication and vaccine route.\nUsed for Medications and Immunization.route\nValues are descendants from SNOMED CT Route of Administration concept.",
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
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "284009009"
      }]
    }]
  }
}

```
