# Resource Profiles - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* **Resource Profiles**

## Resource Profiles

### Resource Profiles

This page describes constraints and usage of FHIR Resource profiles used in this Implementation Guide.

* [FijiPatient](StructureDefinition-fiji-patient.md)
* [FijiPractitioner](StructureDefinition-fiji-practitioner.md)
* [FijiFacility](StructureDefinition-fiji-facility.md)
* [FijiAdministrativeZone](StructureDefinition-fiji-administrative-zone.md)
* [FijiEncounter](StructureDefinition-fiji-encounter.md)

#### Clinical Profiles

For allergies and intolerances:

* [FijiAllergyIntolerance](StructureDefinition-fiji-allergy-intolerance.md)

For diagnoses and problem list items:

* [FijiCondition](StructureDefinition-fiji-condition.md)

For interventions/procedures:

* [FijiProcedure](StructureDefinition-fiji-procedure.md)

For Immunizations:

* [FijiImmunization](StructureDefinition-fiji-immunization.md)

For Medication Prescription and Dispensing:

* [FijiMedicationRequest](StructureDefinition-fiji-medication-request.md)
* [FijiMedicationDispense](StructureDefinition-fiji-medication-dispense.md)

For lab/pathology observations and diagnostic reports:

* [FijiPathologyObservation](StructureDefinition-fiji-pathology-observation.md)
* [FijiPathologyReport](StructureDefinition-fiji-laboratory-diagnostic-report.md)

For imaging observations and diagnostic reports:

* [FijiDiagnosticObservation](StructureDefinition-fiji-diagnostic-observation.md)
* [FijiImagingDiagnosticReport](StructureDefinition-fiji-imaging-diagnostic-report.md)

For vital signs:

* [FijiBloodPressure](StructureDefinition-fiji-vital-blood-pressure.md)
* [FijiBMI](StructureDefinition-fiji-vital-bmi.md)
* [FijiBodyTemperature](StructureDefinition-fiji-vital-body-temperature.md)
* [FijiHeartRate](StructureDefinition-fiji-vital-heart-rate.md)
* [FijiHeight](StructureDefinition-fiji-vital-height.md)
* [FijiHeadCircumference](StructureDefinition-fiji-vital-head-circumference.md)
* [FijiOxygenSaturation](StructureDefinition-fiji-vital-oxygen-saturation.md)
* [FijiRespiratoryRate](StructureDefinition-fiji-vital-respiratory-rate.md)
* [FijiWeight](StructureDefinition-fiji-vital-weight.md)

Placeholder profiles: The following resource profiles are included in this IG as placeholders for further definition in subsequent iterations of the this IG. These are included because these are signficant data resources and/or are dependencies of the above listed profiles. These profiles require further detailed evaluation and consultation before meaningful data standards can be put in place. Placeholders profiles have only minimal data constraints, but provide reference links from/to FijiPatient, FijiAddress etc. so as to ensure a foundational level of future interoperability.

* [FijiDevice](StructureDefinition-fiji-device.md)
* [FijiMedication](StructureDefinition-fiji-medication.md)
* [FijiLocation](StructureDefinition-fiji-location.md)
* [FijiRelatedPerson](StructureDefinition-fiji-related-person.md)
* [FijiServiceRequest](StructureDefinition-fiji-service-request.md)
* [FijiSpecimen](StructureDefinition-fiji-specimen.md)

