Profile: FijiDiagnosticObservation
Parent: Observation
Id: fiji-diagnostic-observation
Title: "Fiji Diagnostic Observation"
Description: """
## Fiji Diagnostic Observation

The **Fiji Diagnostic Observation** profile represents an individual observation or finding produced as part of a radiology or other diagnostic investigation. It is based on the FHIR `Observation` resource and provides constraints and terminology bindings appropriate for diagnostic results in Fiji.

The profile is intended to support the representation of individual diagnostic findings, including coded radiology findings, anatomical locations, performers, and component observations.

### Key Elements

| Element | Cardinality | Description |
|---|---:|---|
| `status` | 1..1 | The status of the diagnostic observation, indicating whether the result is preliminary, final, amended, or has another applicable status. |
| `category` | 1..* | Classifies the observation as belonging to a diagnostic service or discipline. Bound to the FHIR Diagnostic Service Sections value set with a preferred binding. |
| `code` | 1..1 | Identifies the type of diagnostic finding or observation. Bound to the Fiji Radiology Findings Value Set with a preferred binding. |
| `subject` | 1..1 | Identifies the patient who is the subject of the diagnostic observation. Restricted to `FijiPatient`. |
| `effective[x]` | 1..1 | The clinically relevant date/time or period associated with the observation. |
| `performer` | 0..* | Identifies the individual or organisation responsible for performing or producing the observation. Restricted to a Fiji patient, practitioner, practitioner role, or organisation. |
| `value[x]` | 0..1 | The result of the diagnostic observation. The type of value is determined by the nature of the observation. |
| `dataAbsentReason` | 0..1 | Provides a reason when a result is not available. Bound to the FHIR Data Absent Reason value set with an extensible binding. |
| `bodySite` | 0..1 | Identifies the anatomical site associated with the diagnostic observation. Bound to the Fiji Body Site Value Set with an extensible binding. |
| `hasMember` | 0..* | References other diagnostic observations that are related to or form part of this observation. References are restricted to `FijiDiagnosticObservation`. |
| `component` | 0..* | Represents component observations that form part of the diagnostic observation. |
| `component.code` | 1..1 | Identifies the type of the component observation. |
| `component.value[x]` | 0..1 | The result of the component observation. |
| `component.dataAbsentReason` | 0..1 | Provides a reason when the value of a component observation is not available. |

### Terminology Bindings

| Element | Value Set | Binding | Purpose |
|---|---|---|---|
| `category` | Diagnostic Service Sections | Preferred | Identifies the diagnostic service or discipline associated with the observation. |
| `code` | `FijiRadiologyFindingsVS` | Preferred | Identifies the diagnostic finding or observation using relevant SNOMED CT concepts. |
| `dataAbsentReason` | FHIR Data Absent Reason | Extensible | Provides a standard reason when an observation result is unavailable. |
| `bodySite` | `FijiBodySiteVS` | Extensible | Identifies the anatomical or acquired body structure associated with the observation using SNOMED CT. |

### Diagnostic Finding Code

The `code` element identifies the diagnostic finding represented by the observation and is bound to `FijiRadiologyFindingsVS`.

The value set is defined using SNOMED CT concepts that are both clinical findings and associated with imaging procedures:

`descendant-of 404684003 |Clinical finding| AND descendant-of 363679005 |Imaging procedure|`

This provides a terminology-based approach to identifying findings relevant to radiology and imaging rather than maintaining a fixed list of individual concepts.

### Body Site

Where applicable, `bodySite` identifies the anatomical location to which the diagnostic observation relates. The element is bound to `FijiBodySiteVS` using an extensible binding.

The value set is based on SNOMED CT anatomical or acquired body structure concepts:

`< 442083009 |Anatomical or acquired body structure (body structure)|`

This allows standard SNOMED CT concepts to be used to represent the anatomical site while allowing additional concepts where required.

### Component Observations

The `component` element may be used when a diagnostic observation contains additional observations that are integral to the main observation. Each component must have a `code` identifying what is being observed and may contain either a result in `value[x]` or a `dataAbsentReason` when the result is unavailable.

Components are appropriate where the individual results form part of a single overall observation and do not need to be represented as separate resources.

### Related Diagnostic Observations

The `hasMember` element may be used to associate the observation with other diagnostic observations. References are restricted to `FijiDiagnosticObservation`, supporting the representation of groups of related diagnostic findings.

For example, a diagnostic observation may use `hasMember` to reference separate observations representing individual findings from the same diagnostic investigation.

### Missing Results

Both the main observation and its components support `dataAbsentReason`. This should be used when a result that would otherwise be represented in `value[x]` is not available, rather than leaving the reason for the missing result implicit.

The profile uses the standard FHIR Data Absent Reason value set with an **extensible** binding.
"""
* status 1..1 MS
* category 1..* MS
* category from $obs-diag-svc-vs (preferred)
* code 1..1 MS
* code from FijiRadiologyFindingsVS (preferred)
* subject 1..1 MS
* subject only Reference(FijiPatient)
* effective[x] 1..1 MS
* encounter only Reference(FijiEncounter)
* performer MS
* performer only Reference(FijiPatient or FijiPractitioner or FijiPractitionerRole or FijiOrganization)
* value[x] MS
* dataAbsentReason MS
* dataAbsentReason from $obs-dataabsent-vs (extensible)
* note 0..* MS
* bodySite MS
* bodySite from FijiBodySiteVS (extensible)
* hasMember MS
* hasMember only Reference(FijiDiagnosticObservation)
* component MS
* component.code 1..1 MS
* component.value[x] MS
* component.dataAbsentReason MS
