# Body Position value set - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Body Position value set 

 **References** 

* [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md)
* [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md)
* [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md)
* [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md)
* [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-body-position-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-body-position-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.2"
  }],
  "version" : "0.9.0",
  "name" : "FijiBodyPositionVS",
  "title" : "Body Position value set",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-19T06:50:17+00:00",
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
  "description" : "SELECT SNOMED CT code system values the position in which the individual was in during a measurement.",
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
        "value" : "< 9851009"
      }]
    }]
  }
}

```
