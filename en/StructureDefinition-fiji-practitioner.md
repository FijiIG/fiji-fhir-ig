# Fiji Practitioner - Draft Fiji Core Implementation Guide v0.3.0

## Resource Profile: Fiji Practitioner 

**Usages:**

* Refer to this Profile: [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md), [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md), [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md), [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md)... Show 8 more, [Fiji Immunization](StructureDefinition-fiji-immunization.md), [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md), [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md), [Fiji Medication Request](StructureDefinition-fiji-medication-request.md), [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md), [Fiji Patient](StructureDefinition-fiji-patient.md), [Fiji Practitioner Role](StructureDefinition-fiji-practitioner-role.md) and [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md)
* Examples for this Profile: [Practitioner/FijiPractitionerExample](Practitioner-FijiPractitionerExample.md)

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
  "version" : "0.3.0",
  "name" : "FijiPractitioner",
  "title" : "Fiji Practitioner",
  "status" : "draft",
  "date" : "2026-10-23T04:23:18+00:00",
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
  "description" : "# Fiji Practitioner\n\n## Overview\n\nThe **Fiji Practitioner** profile represents a healthcare practitioner involved in the delivery of healthcare services within Fiji. It supports culturally appropriate naming conventions while preserving the regulatory and medico-legal identity requirements necessary for clinical documentation, healthcare information exchange (HIE), and practitioner identification.\n\nThe profile uses the FHIR `Practitioner` resource and supports professional identifiers, registered and commonly used names, contact information, professional qualifications, and languages used by the practitioner. An optional iTaukei affiliation extension supports culturally appropriate representation of clan affiliation where applicable.\n\nAt least one professional identifier and exactly one official name are required. A usual name may be recorded when the practitioner is commonly known by a different name in clinical or community settings.\n\n## Key elements\n\n| Element | Cardinality | Constraints / requirements | Description |\n|---|---|---|---|\n| `identifier` | `1..*` | Must contain at least one identifier. | Professional registration, licensing, or other identifiers used to identify the practitioner. |\n| `identifier[medicalRegistrationNumber]` | `0..1` | Uses the system `https://fhir.health.gov.fj/identifier/practitioner-medical-registration`; when present, `system` and `value` are required. | Medical registration number issued by the relevant professional registration authority. |\n| `name` | `1..*` | Uses `FijiHumanName`; sliced by `use`. | Names associated with the practitioner, supporting Fiji-specific naming conventions. |\n| `name[official]` | `1..1` | `use = official`. | The practitioner's registered or licensed name, supporting reliable medico-legal identification. |\n| `name[usual]` | `0..1` | `use = usual`. | The name commonly used in clinical practice or community interactions, where different from the official name. |\n| `extension[iTaukei]` | `0..1` | Uses `FijiITaukeiAffiliation`. | Optional iTaukei affiliation information, where applicable and appropriate to record. |\n| `telecom` | `0..*` | Must contain valid contact details when populated. | Professional telephone numbers, email addresses, or other contact channels. |\n| `address` | `0..*` | Uses `FijiAddress`. | Practice or correspondence addresses. |\n| `gender` | `0..1` | Must use the FHIR administrative gender value set. | Administrative gender, where recorded. |\n| `qualification` | `0..*` | `qualification.code` is `1..1` for each qualification. | Professional qualifications, certifications, or credentials held by the practitioner. |\n| `communication` | `0..*` | No mandatory language has been specified by this profile. | Languages the practitioner can use to communicate with patients and other healthcare professionals. |\n\n## Implementation guidance\n\n- **Professional identity:** Implementations should use the medical registration identifier when one is available. The profile currently permits other identifiers and does not require the medical registration slice to be populated.\n- **Name handling:** The official name should reflect the practitioner's registered or licensed identity. The usual name supports respectful, culturally appropriate communication without replacing the official name.\n- **Cultural affiliation:** Record the iTaukei affiliation extension only where applicable and appropriate. It is optional and should not be used as a substitute for practitioner identity or professional registration.\n- **Qualifications:** Record each qualification separately, using an appropriate coded qualification where available. A Fiji-specific qualification value set may be introduced in a future version.\n- **Communication:** Record the languages the practitioner can use to support appropriate patient communication and care coordination. A minimum communication language is not currently required.\n- **Contact information:** Use `telecom` and `address` for professional contact details and practice or correspondence locations, subject to applicable privacy and data governance requirements.\n\n## Scope and future considerations\n\nThe following items are identified for future development and are not mandatory constraints in the current profile:\n\n- Require at least one medical or other professional registration identifier through a dedicated identifier slice.\n- Bind `qualification.code` to an appropriate Fiji-specific value set.\n- Require at least one practitioner communication language.\n- Consider a dedicated `displayName` extension if a consistent preferred-name display mechanism is needed across electronic health record systems and HIE services.\n\nThis profile is intended to provide a consistent representation of healthcare practitioners across Fiji's healthcare systems while supporting professional accountability, interoperability, and culturally appropriate care.",
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
      "id" : "Practitioner.extension:iTaukei",
      "path" : "Practitioner.extension",
      "sliceName" : "iTaukei",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-iTaukei-affiliation"]
      }]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Professional identifiers (registration, license, etc.)",
      "definition" : "Includes professional registration numbers and other practitioner identifiers.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:medicalRegistrationNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "medicalRegistrationNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:medicalRegistrationNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "https://fhir.health.gov.fj/identifier/practitioner-medical-registration"
    },
    {
      "id" : "Practitioner.identifier:medicalRegistrationNumber.value",
      "path" : "Practitioner.identifier.value",
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
      "short" : "Administrative gender",
      "mustSupport" : true
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
