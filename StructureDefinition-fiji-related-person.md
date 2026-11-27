# Fiji Healthcare Related Person - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Healthcare Related Person**

## Resource Profile: Fiji Healthcare Related Person 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/StructureDefinition/fiji-related-person | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:FijiRelatedPerson |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.42.25 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. 

**Usages:**

* Refer to this Profile: [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md) and [Fiji Patient](StructureDefinition-fiji-patient.md)
* Examples for this Profile: [RelatedPerson/FijiRelatedPersonExample](RelatedPerson-FijiRelatedPersonExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fj.gov.health.fhir.core|current/StructureDefinition/StructureDefinition-fiji-related-person.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fiji-related-person.csv), [Excel](StructureDefinition-fiji-related-person.xlsx), [Schematron](StructureDefinition-fiji-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-related-person",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-related-person",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.42.25"
  }],
  "version" : "0.9.1",
  "name" : "FijiRelatedPerson",
  "title" : "Fiji Healthcare Related Person",
  "status" : "draft",
  "date" : "2026-11-27T08:01:49+00:00",
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
  "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    }]
  }
}

```
