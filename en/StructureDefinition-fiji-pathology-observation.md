# Fiji Pathology Observation - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Pathology Observation 

 

## Scope

 
The **Fiji Pathology Observation** profile represents a laboratory or pathology result associated with a patient. It is based on the FHIR `Observation` resource and is intended to support the exchange of individual pathology results as well as groups of related results, such as lipid panels, full blood counts, and blood gas analyses. 
A pathology observation identifies the test performed, the patient, the timing of the observation, and the resulting value. It may also provide information about the specimen, performer, interpretation, reference range, and relationships to other pathology observations. 
The profile supports two approaches for grouping related results: 
* **`hasMember`** — used to link a panel or other higher-level observation to independently represented member observations.
* **`component`** — used when multiple values are intrinsically part of a single observation and are represented within the same resource.
 

### Key Elements

 

| | | | |
| :--- | :--- | :--- | :--- |
| `status` | 1..1 | Yes | Indicates the status of the pathology result, such as preliminary, final, amended, or corrected. |
| `category` | 1..* | Yes | Classifies the observation. For pathology results, the laboratory category should normally be used. Values are drawn from the observation category ValueSet. |
| `subject` | 1..1 | Yes | Identifies the patient to whom the pathology result relates. In this profile, the reference is restricted to`FijiPatient`. |
| `code` | 1..1 | Yes | Identifies the pathology test or observation being reported, such as haemoglobin, glucose, cholesterol, or arterial oxygen partial pressure. Values should preferably use the`ObsVS`ValueSet. |
| `effective[x]` | 1..1 | Yes | Records the clinically relevant time or period for the observation, such as the time a specimen was collected or the measurement was performed. |
| `encounter` | 0..1 | Yes | Identifies the healthcare encounter associated with the observation. |
| `performer` | 0..* | Yes | Identifies the person, practitioner, practitioner role, or organization responsible for the observation or result. |
| `value[x]` | 0..1 | Yes | Contains the actual pathology result, such as a quantity, coded concept, string, or other appropriate FHIR data type. |
| `dataAbsentReason` | 0..1 | Yes | Provides a reason when an expected result value is not available. |
| `interpretation` | 0..* | Yes | Provides an interpretation of the result, such as high, low, normal, or abnormal. |
| `specimen` | 0..1 | Yes | Identifies the specimen from which the pathology result was obtained, such as serum, plasma, or arterial blood. |
| `referenceRange` | 0..* | Yes | Provides the reference range against which the result can be interpreted. |
| `hasMember` | 0..* | Yes | Links the observation to other independently represented pathology observations. This is particularly useful for pathology panels. References are restricted to`FijiPathologyObservation`. |
| `component` | 0..* | Yes | Represents additional measurements that are part of the same observation. |
| `component.code` | 1..1 | Yes | Identifies the type of component observation. Values should preferably use the`ObsVS`ValueSet. |
| `component.value[x]` | 0..1 | Yes | Contains the value of the component observation. |
| `component.dataAbsentReason` | 0..1 | Yes | Provides a reason when a component result is not available. |

 

### Terminology

 
The following terminology bindings are defined by this profile: 

| | | |
| :--- | :--- | :--- |
| `category` | [ObservationCategoryCodes HL7](http://hl7.org/fhir/ValueSet/observation-category) | Preferred |
| `code` | [LOINC codes](http://loinc.org) | Preferred |
| `dataAbsentReason` | [DataAbsentReason HL7](https://hl7.org/fhir/R4/valueset-data-absent-reason.html) | Extensible |
| `interpretation` | [ObservationInterpretation HL7](https://hl7.org/fhir/R4/valueset-observation-interpretation.html) | Extensible |
| `component.code` | [LOINC codes](http://loinc.org) | Preferred |

 
Where an appropriate terminology exists, coded pathology observations should use internationally recognized terminology such as **LOINC** for laboratory tests and **SNOMED CT** where appropriate. Results expressed as quantities should use UCUM for units of measure. 

### Pathology Panels

 
A pathology panel may be represented as a higher-level `FijiPathologyObservation` with `hasMember` references to the individual results. 
For example, a lipid panel could be represented as: 

```
FijiPathologyObservation
  code: Lipid panel
  hasMember:
    - Total cholesterol
    - HDL cholesterol
    - LDL cholesterol
    - Triglycerides

```

 
Each member is itself a `FijiPathologyObservation` and can contain its own result, interpretation, reference range, and specimen. 
This approach allows individual pathology results to be independently referenced and exchanged while retaining their relationship to the overall panel. 

### Components

 
`component` should be used when multiple measurements form part of a **single observation** rather than being independently represented results. 
For example, an observation representing a blood pressure measurement can contain systolic and diastolic blood pressure as components. In contrast, a laboratory panel such as a lipid panel is generally better represented using `hasMember`, with each analyte represented as a separate observation. 

**Usages:**

* Refer to this Profile: [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md) and [Fiji Pathology Observation](StructureDefinition-fiji-pathology-observation.md)
* Examples for this Profile: [Observation/ExampleArterialPO2](Observation-ExampleArterialPO2.md), [Observation/ExampleHDLCholesterol](Observation-ExampleHDLCholesterol.md), [Observation/ExampleLDLCholesterol](Observation-ExampleLDLCholesterol.md), [Observation/ExampleLipidPanel](Observation-ExampleLipidPanel.md)... Show 2 more, [Observation/ExampleTotalCholesterol](Observation-ExampleTotalCholesterol.md) and [Observation/ExampleTriglycerides](Observation-ExampleTriglycerides.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-pathology-observation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-pathology-observation.csv), [Excel](../StructureDefinition-fiji-pathology-observation.xlsx), [Schematron](../StructureDefinition-fiji-pathology-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-pathology-observation",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation",
  "version" : "0.2.1",
  "name" : "FijiPathologyObservation",
  "title" : "Fiji Pathology Observation",
  "status" : "draft",
  "date" : "2026-09-23T05:51:44+00:00",
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
  "description" : "## Scope\n\nThe **Fiji Pathology Observation** profile represents a laboratory or pathology result associated with a patient. It is based on the FHIR `Observation` resource and is intended to support the exchange of individual pathology results as well as groups of related results, such as lipid panels, full blood counts, and blood gas analyses.\n\nA pathology observation identifies the test performed, the patient, the timing of the observation, and the resulting value. It may also provide information about the specimen, performer, interpretation, reference range, and relationships to other pathology observations.\n\nThe profile supports two approaches for grouping related results:\n\n* **`hasMember`** — used to link a panel or other higher-level observation to independently represented member observations.\n* **`component`** — used when multiple values are intrinsically part of a single observation and are represented within the same resource.\n\n### Key Elements\n\n| Element                      | Cardinality | Must Support | Description                                                                                                                                                                                     |\n| ---------------------------- | ----------: | :----------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |\n| `status`                     |        1..1 |      Yes     | Indicates the status of the pathology result, such as preliminary, final, amended, or corrected.                                                                                                |\n| `category`                   |        1..* |      Yes     | Classifies the observation. For pathology results, the laboratory category should normally be used. Values are drawn from the observation category ValueSet.                                    |\n| `subject`                    |        1..1 |      Yes     | Identifies the patient to whom the pathology result relates. In this profile, the reference is restricted to `FijiPatient`.                                                                     |\n| `code`                       |        1..1 |      Yes     | Identifies the pathology test or observation being reported, such as haemoglobin, glucose, cholesterol, or arterial oxygen partial pressure. Values should preferably use the `ObsVS` ValueSet. |\n| `effective[x]`               |        1..1 |      Yes     | Records the clinically relevant time or period for the observation, such as the time a specimen was collected or the measurement was performed.                                                 |\n| `encounter`                  |        0..1 |      Yes     | Identifies the healthcare encounter associated with the observation.                                                                                                                            |\n| `performer`                  |        0..* |      Yes     | Identifies the person, practitioner, practitioner role, or organization responsible for the observation or result.                                                                              |\n| `value[x]`                   |        0..1 |      Yes     | Contains the actual pathology result, such as a quantity, coded concept, string, or other appropriate FHIR data type.                                                                           |\n| `dataAbsentReason`           |        0..1 |      Yes     | Provides a reason when an expected result value is not available.                                                                                                                               |\n| `interpretation`             |        0..* |      Yes     | Provides an interpretation of the result, such as high, low, normal, or abnormal.                                                                                                               |\n| `specimen`                   |        0..1 |      Yes     | Identifies the specimen from which the pathology result was obtained, such as serum, plasma, or arterial blood.                                                                                 |\n| `referenceRange`             |        0..* |      Yes     | Provides the reference range against which the result can be interpreted.                                                                                                                       |\n| `hasMember`                  |        0..* |      Yes     | Links the observation to other independently represented pathology observations. This is particularly useful for pathology panels. References are restricted to `FijiPathologyObservation`.     |\n| `component`                  |        0..* |      Yes     | Represents additional measurements that are part of the same observation.                                                                                                                       |\n| `component.code`             |        1..1 |      Yes     | Identifies the type of component observation. Values should preferably use the `ObsVS` ValueSet.                                                                                                |\n| `component.value[x]`         |        0..1 |      Yes     | Contains the value of the component observation.                                                                                                                                                |\n| `component.dataAbsentReason` |        0..1 |      Yes     | Provides a reason when a component result is not available.                                                                                                                                     |\n\n### Terminology\n\nThe following terminology bindings are defined by this profile:\n\n| Element            | ValueSet             | Binding Strength |\n| ------------------ | -------------------- | ---------------- |\n| `category`         | [ObservationCategoryCodes HL7](http://hl7.org/fhir/ValueSet/observation-category)      | Preferred        |\n| `code`             | [LOINC codes](http://loinc.org)         | Preferred        |\n| `dataAbsentReason` | [DataAbsentReason HL7](https://hl7.org/fhir/R4/valueset-data-absent-reason.html) | Extensible       |\n| `interpretation`   | [ObservationInterpretation HL7](https://hl7.org/fhir/R4/valueset-observation-interpretation.html)     | Extensible       |\n| `component.code`   | [LOINC codes](http://loinc.org)              | Preferred        |\n\nWhere an appropriate terminology exists, coded pathology observations should use internationally recognized terminology such as **LOINC** for laboratory tests and **SNOMED CT** where appropriate. Results expressed as quantities should use UCUM for units of measure.\n\n### Pathology Panels\n\nA pathology panel may be represented as a higher-level `FijiPathologyObservation` with `hasMember` references to the individual results.\n\nFor example, a lipid panel could be represented as:\n\n```text\nFijiPathologyObservation\n  code: Lipid panel\n  hasMember:\n    - Total cholesterol\n    - HDL cholesterol\n    - LDL cholesterol\n    - Triglycerides\n```\n\nEach member is itself a `FijiPathologyObservation` and can contain its own result, interpretation, reference range, and specimen.\n\nThis approach allows individual pathology results to be independently referenced and exchanged while retaining their relationship to the overall panel.\n\n### Components\n\n`component` should be used when multiple measurements form part of a **single observation** rather than being independently represented results.\n\nFor example, an observation representing a blood pressure measurement can contain systolic and diastolic blood pressure as components. In contrast, a laboratory panel such as a lipid panel is generally better represented using `hasMember`, with each analyte represented as a separate observation.\n",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-category"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/obs-vs"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "patternReference" : {
        "reference" : "Encounter/FijiEncounterExample"
      }
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role",
        "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/data-absent-reason"
      }
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-interpretation"
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/obs-vs"
      }
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "mustSupport" : true
    }]
  }
}

```
