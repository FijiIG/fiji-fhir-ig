# Service Type code valueset - Draft Fiji Core Implementation Guide v0.2.1

## ValueSet: Service Type code valueset 

 **References** 

* [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-service-type-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-service-type-vs",
  "version" : "0.2.1",
  "name" : "FijiServiceTypeVS",
  "title" : "Service Type code valueset",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-06T07:16:04+00:00",
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
  "description" : "Service Type valueset for Fiji Core. \nProposed valueset is taken from SNOMED Services codes.",
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
        "value" : "< 224930009|Services|"
      }]
    }]
  }
}

```
