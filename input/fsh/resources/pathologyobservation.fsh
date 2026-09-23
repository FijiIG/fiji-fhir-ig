Profile: FijiPathologyObservation
Parent: Observation
Id: fiji-pathology-observation
Title: "Fiji Pathology Observation"
Description: """
## Scope

The **Fiji Pathology Observation** profile represents a laboratory or pathology result associated with a patient. It is based on the FHIR `Observation` resource and is intended to support the exchange of individual pathology results as well as groups of related results, such as lipid panels, full blood counts, and blood gas analyses.

A pathology observation identifies the test performed, the patient, the timing of the observation, and the resulting value. It may also provide information about the specimen, performer, interpretation, reference range, and relationships to other pathology observations.

The profile supports two approaches for grouping related results:

* **`hasMember`** — used to link a panel or other higher-level observation to independently represented member observations.
* **`component`** — used when multiple values are intrinsically part of a single observation and are represented within the same resource.

### Key Elements

| Element                      | Cardinality | Must Support | Description                                                                                                                                                                                     |
| ---------------------------- | ----------: | :----------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `status`                     |        1..1 |      Yes     | Indicates the status of the pathology result, such as preliminary, final, amended, or corrected.                                                                                                |
| `category`                   |        1..* |      Yes     | Classifies the observation. For pathology results, the laboratory category should normally be used. Values are drawn from the observation category ValueSet.                                    |
| `subject`                    |        1..1 |      Yes     | Identifies the patient to whom the pathology result relates. In this profile, the reference is restricted to `FijiPatient`.                                                                     |
| `code`                       |        1..1 |      Yes     | Identifies the pathology test or observation being reported, such as haemoglobin, glucose, cholesterol, or arterial oxygen partial pressure. Values should preferably use the `ObsVS` ValueSet. |
| `effective[x]`               |        1..1 |      Yes     | Records the clinically relevant time or period for the observation, such as the time a specimen was collected or the measurement was performed.                                                 |
| `encounter`                  |        0..1 |      Yes     | Identifies the healthcare encounter associated with the observation.                                                                                                                            |
| `performer`                  |        0..* |      Yes     | Identifies the person, practitioner, practitioner role, or organization responsible for the observation or result.                                                                              |
| `value[x]`                   |        0..1 |      Yes     | Contains the actual pathology result, such as a quantity, coded concept, string, or other appropriate FHIR data type.                                                                           |
| `dataAbsentReason`           |        0..1 |      Yes     | Provides a reason when an expected result value is not available.                                                                                                                               |
| `interpretation`             |        0..* |      Yes     | Provides an interpretation of the result, such as high, low, normal, or abnormal.                                                                                                               |
| `specimen`                   |        0..1 |      Yes     | Identifies the specimen from which the pathology result was obtained, such as serum, plasma, or arterial blood.                                                                                 |
| `referenceRange`             |        0..* |      Yes     | Provides the reference range against which the result can be interpreted.                                                                                                                       |
| `hasMember`                  |        0..* |      Yes     | Links the observation to other independently represented pathology observations. This is particularly useful for pathology panels. References are restricted to `FijiPathologyObservation`.     |
| `component`                  |        0..* |      Yes     | Represents additional measurements that are part of the same observation.                                                                                                                       |
| `component.code`             |        1..1 |      Yes     | Identifies the type of component observation. Values should preferably use the `ObsVS` ValueSet.                                                                                                |
| `component.value[x]`         |        0..1 |      Yes     | Contains the value of the component observation.                                                                                                                                                |
| `component.dataAbsentReason` |        0..1 |      Yes     | Provides a reason when a component result is not available.                                                                                                                                     |

### Terminology

The following terminology bindings are defined by this profile:

| Element            | ValueSet             | Binding Strength |
| ------------------ | -------------------- | ---------------- |
| `category`         | [ObservationCategoryCodes HL7](http://hl7.org/fhir/ValueSet/observation-category)      | Preferred        |
| `code`             | [LOINC codes](http://loinc.org)         | Preferred        |
| `dataAbsentReason` | [DataAbsentReason HL7](https://hl7.org/fhir/R4/valueset-data-absent-reason.html) | Extensible       |
| `interpretation`   | [ObservationInterpretation HL7](https://hl7.org/fhir/R4/valueset-observation-interpretation.html)     | Extensible       |
| `component.code`   | [LOINC codes](http://loinc.org)              | Preferred        |

Where an appropriate terminology exists, coded pathology observations should use internationally recognized terminology such as **LOINC** for laboratory tests and **SNOMED CT** where appropriate. Results expressed as quantities should use UCUM for units of measure.

### Pathology Panels

A pathology panel may be represented as a higher-level `FijiPathologyObservation` with `hasMember` references to the individual results.

For example, a lipid panel could be represented as:

```text
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

"""
* status 1..1 MS
* category 1..* MS
* category from $obs-cat-vs (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* code 1..1 MS
* code from ObsVS (preferred)
* effective[x] 1..1 MS
* encounter = Reference(Encounter/FijiEncounterExample)
* performer MS
* performer only Reference(FijiPatient or FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* value[x] MS
* dataAbsentReason MS
* dataAbsentReason from $obs-dataabsent-vs (extensible)
* interpretation MS
* interpretation from $obs-interp-vs (extensible)
* specimen MS
* referenceRange MS
* hasMember MS
* hasMember only Reference(FijiPathologyObservation)
* component MS
* component.code 1..1 MS
* component.code from ObsVS (preferred)
* component.value[x] MS
* component.dataAbsentReason MS
