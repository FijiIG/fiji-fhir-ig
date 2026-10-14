# Fiji Healthcare Organization Role Type Value Set - Draft Fiji Core Implementation Guide v0.2.2

## ValueSet: Fiji Healthcare Organization Role Type Value Set 

 **References** 

* [Fiji Healthcare Service or Organization](StructureDefinition-fiji-organization.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-organization-role-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-organization-role-vs",
  "version" : "0.2.2",
  "name" : "FijiOrganizationRoleVS",
  "title" : "Fiji Healthcare Organization Role Type Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-14T05:21:25+00:00",
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
        "property" : "expression",
        "op" : "=",
        "value" : "<< 285201006|Hospital environment| OR << 43741000|Site of care| OR << 440655000|Outpatient environment| OR << 440654001|Inpatient environment|"
      }]
    }]
  }
}

```
