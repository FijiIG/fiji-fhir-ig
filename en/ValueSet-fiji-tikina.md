# Fiji Tikina ValueSet - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Fiji Tikina ValueSet 

 **References** 

* [Fiji iTaukei Affiliation](StructureDefinition-fiji-iTaukei-affiliation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-tikina",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-tikina",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.21"
  }],
  "version" : "0.9.0",
  "name" : "FijiTikinaVS",
  "title" : "Fiji Tikina ValueSet",
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
  "description" : "The set of tikina codes recognised by the\nFiji Implementation Guide.",
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
      "system" : "https://core.fhir.health.gov.fj/CodeSystem/fiji-tikina"
    }]
  }
}

```
