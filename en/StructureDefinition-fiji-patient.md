# Fiji Patient - Draft Fiji Core Implementation Guide v0.3.0

## Resource Profile: Fiji Patient 

**Usages:**

* Refer to this Profile: [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md), [Fiji Condition](StructureDefinition-fiji-condition.md), [Fiji Diagnostic Observation](StructureDefinition-fiji-diagnostic-observation.md), [Fiji Healthcare Encounter](StructureDefinition-fiji-encounter.md)... Show 19 more, [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md), [Fiji Immunization](StructureDefinition-fiji-immunization.md), [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md), [Fiji Medication Dispense](StructureDefinition-fiji-medication-dispense.md), [Fiji Medication Request](StructureDefinition-fiji-medication-request.md), [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md), [Fiji Patient](StructureDefinition-fiji-patient.md), [Fiji Healthcare Procedure](StructureDefinition-fiji-procedure.md), [Fiji Healthcare Service Request](StructureDefinition-fiji-service-request.md), [Fiji Specimen](StructureDefinition-fiji-specimen.md), [Blood Pressure Observation](StructureDefinition-fiji-vital-blood-pressure.md), [BMI Vitals - Fiji](StructureDefinition-fiji-vital-bmi.md), [Body Temperature Vitals - Fiji](StructureDefinition-fiji-vital-body-temperature.md), [Head circumference Vitals - Fiji](StructureDefinition-fiji-vital-head-circumference.md), [Heart Rate Vitals - Fiji](StructureDefinition-fiji-vital-heart-rate.md), [Height Vitals - Fiji](StructureDefinition-fiji-vital-height.md), [Oxygen Saturation Vitals - Fiji](StructureDefinition-fiji-vital-oxygen-saturation.md), [Respiratory Rate Vitals - Fiji](StructureDefinition-fiji-vital-respiratory-rate.md) and [Weight Vitals - Fiji](StructureDefinition-fiji-vital-weight.md)
* Examples for this Profile: [Patient/FijiPatientExample](Patient-FijiPatientExample.md), [Patient/FijiPatientExample1](Patient-FijiPatientExample1.md), [Patient/FijiPatientExample2](Patient-FijiPatientExample2.md) and [Patient/FijiPatientFijiIndo](Patient-FijiPatientFijiIndo.md)

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
  "version" : "0.3.0",
  "name" : "FijiPatient",
  "title" : "Fiji Patient",
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
  "description" : "# Fiji Patient\n\n## Overview\n\nThe `FijiPatient` profile defines the representation of a patient in Fiji healthcare information systems. It builds on the FHIR `Patient` resource and establishes requirements and guidance for recording patient identity, names, demographic information, administrative geography, cultural affiliation, and other relevant personal characteristics.\n\nThe profile supports consistent patient identification across healthcare settings through a mandatory national health number, while allowing additional identifiers such as national identification numbers and facility-specific medical record numbers.\n\nIt also supports Fiji-specific naming conventions through `FijiHumanName`, administrative zone information through `FijiAdminZone`, and iTaukei cultural and genealogical affiliation through `FijiITaukeiAffiliation`. Additional extensions support nationality, religious affiliation, occupation, and ethnicity.\n\nThe profile encourages the use of Fiji-specific resource profiles where available, while retaining compatibility with standard FHIR resources.\n\n## Scope and Usage\n\n`FijiPatient` is intended to represent a person receiving or having received healthcare services within the scope of the Fiji Implementation Guide.\n\nIt supports:\n\n- Identification of patients using a mandatory national health number and other applicable identifiers.\n- Recording of official and usual names, including culturally appropriate naming conventions.\n- Representation of health administration zones relevant to the patient's care.\n- Recording of iTaukei cultural and genealogical affiliations when applicable.\n- Recording of nationality, religious affiliation, occupation, and ethnicity where known and appropriate.\n- Recording of basic demographic information, including gender and date of birth.\n- Recording of patient addresses, languages, healthcare providers, and managing organizations.\n- Linking to other records concerning the same person, including related persons.\n\nOptional demographic and cultural information should be recorded only when available, relevant, and appropriate for the intended healthcare purpose.\n\n## Key Elements\n\n| Element | Cardinality | Description and implementation guidance |\n|---|---|---|\n| `identifier` | 1..* | Identifiers assigned to the patient. At least one identifier is required. Each identifier must have a `system` and `value`. Additional identifiers may include national identification numbers and medical record numbers. |\n| `identifier[nationalHealthNumber]` | 1..1 | Mandatory national health number. The identifier system must be `http://fhir.health.gov.fj/identifier/national-health-number`. The identifier value must be present. |\n| `name` | 1..* | Patient names represented using `FijiHumanName`. At least one name is required. Implementations should distinguish official names from usual or preferred names according to the naming conventions supported by the profile. |\n| `extension[adminZone]` | 0..1 | References `FijiAdminZone`, which supports coded administrative geography associated with the patient's care, including division, subdivision, medical area, nursing zone, and settlement. |\n| `extension[iTaukei]` | 0..1 | References `FijiITaukeiAffiliation`, which supports iTaukei cultural and genealogical affiliation, including yasana (province), tikina, korodine (village), yavusa, mataqali, and tokatoka (family). This extension is optional at the profile level and is relevant to patients for whom the information applies. |\n| `extension[nationality]` | 0..1 | Records the patient's nationality using the patient-nationality extension. The nationality code is drawn from the ISO country value set, with a required binding. The extension's `code` subextension carries the coded value. |\n| `extension[religion]` | 0..1 | Records the patient's religious affiliation using the patient-religion extension. The terminology binding is extensible and is based on the HL7 ReligiousAffiliation value set. |\n| `extension[occupation]` | 0..1 | Records the patient's occupation using `FijiPatientOccupation`. The extension is marked as Must Support. A definitive value set is yet to be specified. |\n| `extension[ethnicity]` | 0..1 | Records the patient's ethnicity using `FijiPatientEthnicity`. The extension is marked as Must Support. A definitive value set is yet to be specified. |\n| `gender` | 0..1 | Records the patient's administrative gender where known. Must Support. |\n| `birthDate` | 0..1 | Records the patient's date of birth where known. Must Support. The date may be identified as estimated using the `BirthDateEstimatedIndicator` extension. |\n| `address` | 0..* | Patient addresses represented using `FijiAddress`. Multiple addresses may be recorded where applicable. |\n| `generalPractitioner[practitioner]` | 0..* | References practitioners responsible for the patient's care. References may target `FijiPractitioner` or the standard `Practitioner` resource. Fiji-specific profiles are preferred where available. |\n| `generalPractitioner[role]` | 0..* | References practitioner roles responsible for the patient's care. References may target `FijiPractitionerRole` or the standard `PractitionerRole` resource. Fiji-specific profiles are preferred where available. |\n| `managingOrganization` | 0..1 | References the organization responsible for the patient. May target `FijiOrganization` or the standard `Organization` resource. Fiji-specific profiles are preferred where available. |\n| `communication` | 0..* | Records languages the patient can use for communication. |\n| `link.other` | 1..1 per link | References another record concerning the same person, using `FijiPatient` or `FijiRelatedPerson`. The cardinality of `link` itself is inherited from the base `Patient` resource. |\n\n## Fiji-Specific Extensions\n\n### Health Administration Zone\n\nThe `FijiAdminZone` extension represents the administrative geography relevant to the patient's healthcare. It supports coded values for:\n\n- Division\n- Subdivision\n- Medical area\n- Nursing zone\n- Settlement\n\nThese values can support patient registration, service catchment identification, care coordination, reporting, and health service planning.\n\nThe administration zone is distinct from the patient's cultural or genealogical affiliation. Implementations should use the appropriate extension for each purpose rather than treating administrative geography and traditional affiliation as interchangeable.\n\n### iTaukei Affiliation\n\nThe `FijiITaukeiAffiliation` extension represents culturally and genealogically relevant iTaukei affiliation. It supports coded values for:\n\n- Yasana (province)\n- Tikina\n- Korodine (village)\n- Yavusa\n- Mataqali\n- Tokatoka (family)\n\nThe extension provides a structured representation of affiliation rather than relying on free-text descriptions. The individual values should be populated when known and appropriate, without assuming that all levels of affiliation will be available for every patient.\n\nThe extension is optional in the `FijiPatient` profile. Its use should respect patient preferences, applicable governance requirements, and the intended purpose of collecting the information.\n\n### Nationality\n\nThe patient-nationality extension records the patient's nationality using a coded country value. The profile requires the extension's `code` subextension to use the ISO country value set.\n\nNationality should be distinguished from citizenship, place of birth, ethnicity, and current residence, as these concepts are not necessarily equivalent.\n\n### Religious Affiliation\n\nThe patient-religion extension records the patient's religious affiliation. Its terminology is based on the HL7 ReligiousAffiliation value set with an extensible binding.\n\nReligious affiliation is optional and should be recorded where appropriate to the care context and the patient's expressed information.\n\n### Occupation\n\nThe `FijiPatientOccupation` extension records the patient's occupation. The extension is optional but is designated Must Support.\n\nA definitive value set is yet to be specified. Implementations should follow the terminology guidance established by the Fiji Implementation Guide when available.\n\n### Ethnicity\n\nThe `FijiPatientEthnicity` extension records the patient's ethnicity. The extension is optional but is designated Must Support.\n\nA definitive value set is yet to be specified. Implementations should use the terminology guidance established by the Fiji Implementation Guide when available.\n\n## Naming Requirements\n\nAll patient names must conform to `FijiHumanName`. At least one name must be recorded.\n\nThe profile includes the following invariant:\n\n`pac-pat-1`: At least one name must have `use = usual` or `use = official`.\n\nThis invariant has warning severity. It encourages implementations to identify either a usual name for everyday use and display, or an official name for formal identification, without making either specific name-use category an unconditional validation requirement.\n\nWhere both names are available, implementations should preserve their distinct purposes. The usual name is generally appropriate for routine display, while the official name supports formal identification and medico-legal processes.\n\n## Patient Identification\n\nThe profile requires at least one patient identifier and mandates exactly one identifier slice for the national health number.\n\nThe national health number identifier must use the following system URI:\n\n`http://fhir.health.gov.fj/identifier/national-health-number`\n\nThe identifier's value is mandatory. Other identifiers may be recorded using their appropriate identifier systems, including national identification numbers and facility-specific medical record numbers.\n\nIdentifiers should be preserved with their assigning system so that values originating from different identifier namespaces are not incorrectly treated as equivalent.\n\n## Demographic Information\n\nThe profile supports the recording of gender and date of birth, with both elements marked Must Support.\n\nDate of birth may be uncertain or estimated. Where an estimated date of birth is recorded, the `BirthDateEstimatedIndicator` extension can indicate that the date is estimated rather than confirmed.\n\nAddresses must conform to `FijiAddress`, allowing address information to follow the Fiji-specific representation defined by the Implementation Guide.\n\nPatient languages are recorded through `communication`, supporting appropriate communication and continuity of care.\n\n## Care Providers and Organizational Responsibility\n\nThe `generalPractitioner` element supports references to practitioners and practitioner roles. The profile distinguishes these reference types through slicing:\n\n- `generalPractitioner[practitioner]` references a `FijiPractitioner` or standard `Practitioner`.\n- `generalPractitioner[role]` references a `FijiPractitionerRole` or standard `PractitionerRole`.\n\nThe `managingOrganization` element identifies the organization responsible for the patient and may reference a `FijiOrganization` or standard `Organization`.\n\nImplementations should prefer Fiji-specific profiles where available, while permitting standard FHIR resources for interoperability.\n\n## Must Support and Conformance Notes\n\nElements marked Must Support indicate that implementations are expected to support the element in accordance with the Implementation Guide's conformance expectations. Must Support does not, by itself, mean that the element must contain a value in every instance.\n\nThe following elements are explicitly marked Must Support in the supplied profile:\n\n- National health number identifier system and value\n- Gender\n- Date of birth\n- Estimated date-of-birth indicator extension\n- Occupation extension\n- Ethnicity extension\n\nThe profile also defines mandatory cardinalities for identifiers, identifier system and value, the national health number slice, and patient names. These cardinality requirements must be distinguished from Must Support expectations.\n\n## Implementation Considerations\n\n1. **Patient identity:** Ensure that the mandatory national health number is recorded using the prescribed identifier system URI.\n2. **Name handling:** Use `FijiHumanName` and distinguish official and usual names where the information is available.\n3. **Administrative geography:** Use `FijiAdminZone` for healthcare administration and service geography.\n4. **Cultural affiliation:** Use `FijiITaukeiAffiliation` for relevant iTaukei cultural and genealogical information, without substituting administrative geography for traditional affiliation.\n5. **Terminology:** Apply the required ISO country value set for nationality and the specified extensible terminology binding for religious affiliation.\n6. **Terminology development:** Complete the occupation and ethnicity value set definitions before imposing more specific terminology conformance requirements.\n7. **Data quality:** Represent estimated dates of birth explicitly and preserve identifier systems.\n8. **Interoperability:** Prefer Fiji-specific profiles for practitioners, practitioner roles, organizations, addresses, and related persons when available, while maintaining compatibility with standard FHIR resources.\n9. **Privacy and appropriate use:** Collect and disclose cultural, religious, and other personal information in accordance with applicable privacy, governance, and healthcare requirements.\n\n## Related Profiles and Extensions\n\n| Conformance artifact | Purpose |\n|---|---|\n| `FijiHumanName` | Fiji-specific patient name representation |\n| `FijiAddress` | Fiji-specific address representation |\n| `FijiAdminZone` | Healthcare administrative geography |\n| `FijiITaukeiAffiliation` | iTaukei cultural and genealogical affiliation |\n| Patient-nationality extension | Patient nationality using coded country values |\n| Patient-religion extension | Patient religious affiliation |\n| `FijiPatientOccupation` | Patient occupation |\n| `FijiPatientEthnicity` | Patient ethnicity |\n| `BirthDateEstimatedIndicator` | Indicates an estimated date of birth |\n| `FijiPractitioner` | Fiji-specific practitioner representation |\n| `FijiPractitionerRole` | Fiji-specific practitioner role representation |\n| `FijiOrganization` | Fiji-specific organization representation |\n| `FijiRelatedPerson` | Fiji-specific related-person representation |",
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
      "id" : "Patient.extension:adminZone",
      "path" : "Patient.extension",
      "sliceName" : "adminZone",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-admin-zone"]
      }]
    },
    {
      "id" : "Patient.extension:iTaukei",
      "path" : "Patient.extension",
      "sliceName" : "iTaukei",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-iTaukei-affiliation"]
      }]
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "short" : "The patient's nationality",
      "definition" : "The nationality represented using ISO 3166 2 letter country codes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality"]
      }]
    },
    {
      "id" : "Patient.extension:nationality.extension:code",
      "path" : "Patient.extension.extension",
      "sliceName" : "code"
    },
    {
      "id" : "Patient.extension:nationality.extension:code.value[x]",
      "path" : "Patient.extension.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/iso3166-1-2"
      }
    },
    {
      "id" : "Patient.extension:religion",
      "path" : "Patient.extension",
      "sliceName" : "religion",
      "short" : "The patient's religious affiliation",
      "definition" : "The patient's professed religious affilition with an extensible valueset based on [ReligiousAffiliation valueset](http://terminology.hl7.org/ValueSet/v3-ReligiousAffiliation).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-religion"]
      }]
    },
    {
      "id" : "Patient.extension:occupation",
      "path" : "Patient.extension",
      "sliceName" : "occupation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient-occupation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:ethnicity",
      "path" : "Patient.extension",
      "sliceName" : "ethnicity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient-ethnicity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Identifers (e.g., national ID, medical record number)",
      "definition" : "Strongly recommended to includes national identification numbers as well as other medical record numbers.",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nationalHealthNumber",
      "path" : "Patient.identifier",
      "sliceName" : "nationalHealthNumber",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nationalHealthNumber.system",
      "path" : "Patient.identifier.system",
      "fixedUri" : "http://fhir.health.gov.fj/identifier/national-health-number"
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
      "short" : "Date of birth, may be flagged as verified via extension",
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
      "id" : "Patient.birthDate.extension:birthDateVerified",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthDateVerified",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://core.fhir.health.gov.fj/StructureDefinition/birthdate-verified-indicator"]
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
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-related-person"]
      }]
    }]
  }
}

```
