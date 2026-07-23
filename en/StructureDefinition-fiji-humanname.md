# Fiji HumanName - Draft Fiji Core Implementation Guide v0.1.1

## Data Type Profile: Fiji HumanName 

 
A HumanName profile designed for representing Fiji names. 
Naming conventions are diverse and may not align with Western norms. This profile accommodates a range of naming practices including: 
* Absence of family names (e.g., in some cultures where individuals may have only given names)
* Patronymic or Matronymic structures
* Multiple given names
* Customary and ceremonial naming
* Distinction between 'usual' (social) and 'official' (legal) names
 
At least one FijiHumanName instance must exist on FijiPatient and FijiPractitioner resources. Systems SHALL NOT require both usual and official names. 
Note: Clan affiliation is recorded separately from the FijiHumanName. It issupported as an optional extension of FijiPatient and FijiPractitioner resources to capture important cultural identity information. 
**STATUS**: Proposed for wider Pacific use - needs further review and consensus from Pacific stakeholders before finalization. 

**Usages:**

* Use this DataType Profile: [Fiji Patient](StructureDefinition-fiji-patient.md) and [Fiji Practitioner](StructureDefinition-fiji-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-humanname.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-humanname.csv), [Excel](../StructureDefinition-fiji-humanname.xlsx), [Schematron](../StructureDefinition-fiji-humanname.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-humanname",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-humanname",
  "version" : "0.1.1",
  "name" : "FijiHumanName",
  "title" : "Fiji HumanName",
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
  "description" : "A HumanName profile designed for representing Fiji names.\n\nNaming conventions are diverse and may not align with Western norms. This profile accommodates a range of naming practices including:\n\n- Absence of family names (e.g., in some cultures where individuals may have only given names)\n- Patronymic or Matronymic structures\n- Multiple given names\n- Customary and ceremonial naming\n- Distinction between 'usual' (social) and 'official' (legal) names\n\nAt least one FijiHumanName instance must exist on FijiPatient and FijiPractitioner resources.\nSystems SHALL NOT require both usual and official names.\n\nNote: Clan affiliation is recorded separately from the FijiHumanName.  It issupported as an optional extension of  FijiPatient and FijiPractitioner resources to capture important cultural identity information.\n\n**STATUS**: Proposed for wider Pacific use - needs further review and consensus from Pacific stakeholders before finalization.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName",
      "constraint" : [{
        "key" : "pac-hn-1",
        "severity" : "error",
        "human" : "At least one of given or text must be present",
        "expression" : "given.exists() or text.exists()",
        "source" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-humanname"
      },
      {
        "key" : "pac-hn-2",
        "severity" : "warning",
        "human" : "If use is 'official' or 'usual', text is strongly recommended",
        "expression" : "use.exists() implies text.exists()",
        "source" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-humanname"
      }]
    },
    {
      "id" : "HumanName.use",
      "path" : "HumanName.use",
      "short" : "Identifies whether this is the usual or official name",
      "definition" : "Indicates the purpose of this name instance.\nGuidance:\n\n- official: The name as recorded in civil registration,\n  passport, or national identity documents. May be Westernised.\n  Family name may be absent.\n\n- usual: The name used in everyday life, including customary,\n  ceremonial, or socially recognised forms. May include titles.\n  This is typically the name displayed in clinical systems.\n\n- nickname: Informal or shortened name used locally.\n\nOther values (temp, old, maiden, anonymous) should be used only\nif specifically required by national policy.",
      "mustSupport" : true
    },
    {
      "id" : "HumanName.text",
      "path" : "HumanName.text",
      "short" : "Full culturally appropriate rendering of the name",
      "definition" : "The complete culturally appropriate display form of the name.\n\nImplementations SHOULD populate text to preserve correct\nordering, titles, clan references (if rendered), macrons,\nglottal markers, and other orthographic features.\n\nClinical systems SHOULD render 'usual.text' when available."
    },
    {
      "id" : "HumanName.family",
      "path" : "HumanName.family",
      "definition" : "Family name if present.\n\nIn some contexts this may represent:\n- An inherited surname\n- A patronymic (father's name)\n- A colonial-era family name\n\nFamily name SHALL NOT be mandatory."
    },
    {
      "id" : "HumanName.given",
      "path" : "HumanName.given",
      "definition" : "Given names. At least one required.\n\nMultiple given names are common. Unicode characters\nincluding macrons and glottal markers are permitted.",
      "min" : 1
    }]
  }
}

```
