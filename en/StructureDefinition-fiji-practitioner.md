# Fiji Practitioner - Draft Fiji Core Implementation Guide v0.1.1

## Resource Profile: Fiji Practitioner 

 
Practitioner profile for Fiji jurisdictions supporting culturally appropriate naming while maintaining regulatory and medico-legal identity requirements. 
Requires at least one official name (registered/licensed name). Supports usual name for culturally recognised or commonly used name. Supports clan affiliation as an optional extension. 

**Usages:**

* Refer to this Profile: [Fiji Patient](StructureDefinition-fiji-patient.md) and [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-practitioner.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-practitioner.csv), [Excel](../StructureDefinition-fiji-practitioner.xlsx), [Schematron](../StructureDefinition-fiji-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-practitioner",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
  "version" : "0.1.1",
  "name" : "FijiPractitioner",
  "title" : "Fiji Practitioner",
  "status" : "active",
  "date" : "2026-07-23T07:16:02+00:00",
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
  "description" : "Practitioner profile for Fiji jurisdictions supporting culturally appropriate naming \nwhile maintaining regulatory and medico-legal identity requirements.\n\nRequires at least one official name (registered/licensed name).\nSupports usual name for culturally recognised or commonly used name.\nSupports clan affiliation as an optional extension.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.extension:clanAffiliation",
      "path" : "Practitioner.extension",
      "sliceName" : "clanAffiliation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-clan-affiliation"]
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "short" : "Professional identifiers (registration, license, etc.)",
      "definition" : "Includes professional registration numbers and other practitioner identifiers.",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-humanname"]
      }]
    },
    {
      "id" : "Practitioner.name:official",
      "path" : "Practitioner.name",
      "sliceName" : "official",
      "short" : "Clinician Registered/licensed name",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.name:official.use",
      "path" : "Practitioner.name.use",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.name:usual",
      "path" : "Practitioner.name",
      "sliceName" : "usual",
      "short" : "Name commonly used in clinical or community settings",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.name:usual.use",
      "path" : "Practitioner.name.use",
      "min" : 1,
      "fixedCode" : "usual"
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "short" : "Professional contact details"
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "short" : "Practice or correspondence address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-address"]
      }]
    },
    {
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "short" : "Administrative gender"
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "short" : "Professional qualifications"
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "short" : "Languages practitioner can use"
    }]
  }
}

```
