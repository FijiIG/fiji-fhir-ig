# Fiji Healthcare Organization Role Type Value Set - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Fiji Healthcare Organization Role Type Value Set 

 **References** 

* [Fiji Healthcare Service or Organization](StructureDefinition-fiji-organization.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-organization-role-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-organization-role-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.17"
  }],
  "version" : "0.9.0",
  "name" : "FijiOrganizationRoleVS",
  "title" : "Fiji Healthcare Organization Role Type Value Set",
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
  "description" : "Valueset for Healthcare Organization Role Type.\nValues from SNOMED CT Hospital environment, Site of care, Outpatient environment, and Inpatient environment.",
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
        "value" : "<< 285201006 OR << 43741000|Site of care| OR << 440655000 OR << 440654001"
      }]
    }]
  }
}

```
