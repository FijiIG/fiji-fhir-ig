# Fiji Medication ValueSet - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Fiji Medication ValueSet 

 **References** 

* [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md)
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
  "id" : "fiji-med-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-med-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.11"
  }],
  "version" : "0.9.0",
  "name" : "FijiMedVS",
  "title" : "Fiji Medication ValueSet",
  "status" : "draft",
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
  "description" : "Fiji Medication valueset based on until Fiji-Pacific valueset is developed",
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
      "system" : "https://universalcodes.msupply.org.nz"
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 105590001"
      }]
    },
    {
      "system" : "http://whocc.no"
    }]
  }
}

```
