# Fiji Specimen - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji Specimen**

## Resource Profile: Fiji Specimen 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/StructureDefinition/fiji-specimen | *Version*:0.9.1 |
| Draft as of 2026-11-27 | *Computable Name*:FijiSpecimen |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.42.27 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
Profile of Specimen for use in Fiji health information systems. This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG. 

**Usages:**

* Refer to this Profile: [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md)
* Examples for this Profile: [Specimen/FijiSpecimenExample](Specimen-FijiSpecimenExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fj.gov.health.fhir.core|current/StructureDefinition/StructureDefinition-fiji-specimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fiji-specimen.csv), [Excel](StructureDefinition-fiji-specimen.xlsx), [Schematron](StructureDefinition-fiji-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-specimen",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-specimen",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.42.27"
  }],
  "version" : "0.9.1",
  "name" : "FijiSpecimen",
  "title" : "Fiji Specimen",
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
  "description" : "Profile of Specimen for use in Fiji health information systems.  This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  ",
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    }]
  }
}

```
