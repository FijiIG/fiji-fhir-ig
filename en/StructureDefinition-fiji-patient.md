# Fiji Patient - Draft Fiji Core Implementation Guide v0.1.1

## Resource Profile: Fiji Patient 

 
Patient profile for Fiji jurisdiction. 
Integrates: 
* FijiHumanName
* Patient-level clan affiliation
* Guidance for usual vs official name use
 

**Usages:**

* Refer to this Profile: [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md), [Fiji Condition](StructureDefinition-fiji-condition.md), [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md), [Fiji Immunization](StructureDefinition-fiji-immunization.md) and [Fiji Observation](StructureDefinition-fiji-observation.md)
* Examples for this Profile: [Patient/FijiPatientExample1](Patient-FijiPatientExample1.md), [Patient/FijiPatientExample2](Patient-FijiPatientExample2.md), [Patient/FijiPatientFijiITaukei](Patient-FijiPatientFijiITaukei.md) and [Patient/FijiPatientFijiIndo](Patient-FijiPatientFijiIndo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-patient.csv), [Excel](../StructureDefinition-fiji-patient.xlsx), [Schematron](../StructureDefinition-fiji-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-patient",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient",
  "version" : "0.1.1",
  "name" : "FijiPatient",
  "title" : "Fiji Patient",
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
  "description" : "Patient profile for Fiji jurisdiction.\n\nIntegrates:\n- FijiHumanName\n- Patient-level clan affiliation\n- Guidance for usual vs official name use",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
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
      "id" : "Patient.extension:clanAffiliation",
      "path" : "Patient.extension",
      "sliceName" : "clanAffiliation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-clan-affiliation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Identifers (e.g., national ID, medical record number)",
      "definition" : "Strongly recommended to includes national identification numbers as well as other medical record numbers.",
      "min" : 1
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "At least one name required; usual preferred for display",
      "min" : 1,
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-humanname"]
      }]
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Date of birth, may be flagged as estimated via extension",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate.extension",
      "path" : "Patient.birthDate.extension",
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
      "id" : "Patient.birthDate.extension:birthDateEstimated",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthDateEstimated",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/birthdate-estimated-indicator"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-address"]
      }]
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "short" : "Languages patient can use"
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Care providers for this patient; prefer Fiji-specific profiles"
    },
    {
      "id" : "Patient.generalPractitioner:practitioner",
      "path" : "Patient.generalPractitioner",
      "sliceName" : "practitioner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "Patient.generalPractitioner:role",
      "path" : "Patient.generalPractitioner",
      "sliceName" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "short" : "Organization responsible for the patient; prefer Fiji specific profiles",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    }]
  }
}

```
