# Fiji Core Implementation Guide - Draft Fiji Core Implementation Guide v0.2.0

## Fiji Core Implementation Guide

### Overview

> **Project Status: In Development** </P> This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

The Fiji Core FHIR Implementation Guide defines the nationally agreed core clinical and administrative data standards for interoperable health information exchange in Fiji. The FHIR Implementation Guide (IG) defines a common set of FHIR profiles, extensions and terminology to support interoperable health information exchange in Fiji.

The high level goals of this IG are:

* Interoperability specification for health data exchange in Fiji
* Compliance/compatibility guidance for aquisition or development of future health systems/software
* Interface/data structure definition basis for future Health Information Exchange based on OpenHIE
* Future support for Internation Patient Summary (FHIR IPS)

### Audience

This guide is intended for:

* Health ministries
* Software developers & Implementers
* Clinical informatics specialists
* Clinical/Technical Advisors and Working Groups
* Vendors

### Design & Decision Documents

* [Document Index](https://github.com/FijiIG/fiji-fhir-ig/blob/main/docs/index.md)

### Getting Started, Contributions and Feedback

New users should begin with:

* [Getting Started](gettingstarted.md)

Then review the following key artifacts:

| | |
| :--- | :--- |
| [Resource Profiles](resources.md) | Fiji-specific constrained FHIR resources |
| [Data Type Profiles](datatypes.md) | Fiji-specific constrained or extended FHIR datatypes |
| [Extensions](extensions.md) | Fiji-specific extension data elements |
| [Terminology](terminology.md) | Terminology bindings |
| Downloads | Package and definitions |

### Package Information

Canonical: `https://core.fhir.health.gov.fj`

FHIR Version: This IG derives from [FHIR R4 ver 4.0.1](https://hl7.org/fhir/R4/index.html).

Package Id: `health.gov.fhir.fj.core`

Version: 0.1.1 ci-build

### Primary Contributors

The Draft Fiji Core FHIR IG is being developed in collaboration with MHMS Fiji, under the supervision of Digital Health, Technical Advisory Group (TAG), with support from CSIRO Strengthening Standards Capability Project, and Australian Government.

This Implementation Guide is released under the Creative Commons CC0 1.0 Universal Public Domain Dedication.

This publication includes IP covered under the following statements.

* Distributed under the Creative Commons CC0-1.0 License ([https://creativecommons.org/publicdomain/zero/1.0/)](https://creativecommons.org/publicdomain/zero/1.0/))

* [Health administrative division codes in Fiji](CodeSystem-fiji-division-cs.md): [FijiAdminZone](StructureDefinition-fiji-admin-zone.md) and [FijiDivisionVS](ValueSet-fiji-division-vs.md)
* [Health administrative medical area codes in Fiji](CodeSystem-fiji-medical-area-cs.md): [FijiMedicalAreaVS](ValueSet-fiji-medical-area-vs.md)
* [Health administrative nursing zone codes in Fiji](CodeSystem-fiji-nursing-zone-cs.md): [FijiNursingZoneVS](ValueSet-fiji-nursing-zone-vs.md)
* [Observation interpretation local codes in Fiji](CodeSystem-fiji-obs-interpretation-cs.md): [FijiBMI](StructureDefinition-fiji-vital-bmi.md), [FijiHeadCircumference](StructureDefinition-fiji-vital-head-circumference.md)... Show 8 more, [FijiHeight](StructureDefinition-fiji-vital-height.md), [FijiObsInterpretationVS](ValueSet-fiji-obs-interpretation-vs.md), [FijiOxygenSaturation](StructureDefinition-fiji-vital-oxygen-saturation.md), [FijiRespiratoryRate](StructureDefinition-fiji-vital-respiratory-rate.md), [FijiVitalBloodPressure](StructureDefinition-fiji-vital-blood-pressure.md), [FijiVitalBodyTemperature](StructureDefinition-fiji-vital-body-temperature.md), [FijiVitalHeartRate](StructureDefinition-fiji-vital-heart-rate.md) and [FijiWeight](StructureDefinition-fiji-vital-weight.md)
* [Health administrative sub-division codes in Fiji](CodeSystem-fiji-sub-division-cs.md): [FijiAdminZone](StructureDefinition-fiji-admin-zone.md) and [FijiSubDivisionVS](ValueSet-fiji-sub-division-vs.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://tx.fhir.org/r4/ValueSet/x-loinc2.82): [FijiCondition](StructureDefinition-fiji-condition.md), [FijiEvidenceVS](ValueSet-fiji-evidence-vs.md)... Show 14 more, [FijiPathologyObservation](StructureDefinition-fiji-pathology-observation.md), [FijiVitalBodyWeightVS](ValueSet-fiji-vital-body-weight-vs.md), [HeartRateVS](ValueSet-heart-rate-loinc.md), [ObsVS](ValueSet-obs-vs.md), [Observation/Example-BMI](Observation-Example-BMI.md), [Observation/Example-BodyHeight](Observation-Example-BodyHeight.md), [Observation/Example-BodyWeight](Observation-Example-BodyWeight.md), [Observation/ExampleArterialPO2](Observation-ExampleArterialPO2.md), [Observation/ExampleBloodPressure](Observation-ExampleBloodPressure.md), [Observation/FijiBodyTemperatureExample](Observation-FijiBodyTemperatureExample.md), [Observation/FijiHeadCircumferenceExample](Observation-FijiHeadCircumferenceExample.md), [Observation/HeartRateExample](Observation-HeartRateExample.md), [Observation/OxygenSaturationExample](Observation-OxygenSaturationExample.md) and [Observation/RespiratoryRateExample](Observation-RespiratoryRateExample.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Encounter/FijiEncounterExample](Encounter-FijiEncounterExample.md), [FijiAllergyAgentVS](ValueSet-fiji-allergy-agent-vs.md)... Show 22 more, [FijiAllergyIntolerance](StructureDefinition-fiji-allergy-intolerance.md), [FijiBodySiteVS](ValueSet-fiji-body-site-vs.md), [FijiCondition](StructureDefinition-fiji-condition.md), [FijiConditionCodeVS](ValueSet-fiji-condition-code-vs.md), [FijiDiagnosticObservation](StructureDefinition-fiji-diagnostic-observation.md), [FijiEncounter](StructureDefinition-fiji-encounter.md), [FijiEvidenceVS](ValueSet-fiji-evidence-vs.md), [FijiImmunization](StructureDefinition-fiji-immunization.md), [FijiMedicationRouteVS](ValueSet-fiji-medication-route-vs.md), [FijiRadiologyFindingsVS](ValueSet-fiji-radiology-findings-vs.md), [FijiRespiratoryRate](StructureDefinition-fiji-vital-respiratory-rate.md), [FijiVitalBloodPressure](StructureDefinition-fiji-vital-blood-pressure.md), [FijiVitalBodyTemperature](StructureDefinition-fiji-vital-body-temperature.md), [FijiVitalHeartRate](StructureDefinition-fiji-vital-heart-rate.md), [FijiVitalMethodVS](ValueSet-fiji-vital-method-vs.md), [Immunization/FijiImmunizationReactionExample](Immunization-FijiImmunizationReactionExample.md), [Immunization/FijiTdapImmunizationExample](Immunization-FijiTdapImmunizationExample.md), [Observation/ExampleBloodPressure](Observation-ExampleBloodPressure.md), [Observation/FijiBodyTemperatureExample](Observation-FijiBodyTemperatureExample.md), [Observation/FijiTdapReactionObservation](Observation-FijiTdapReactionObservation.md), [Observation/HeartRateExample](Observation-HeartRateExample.md) and [Observation/RespiratoryRateExample](Observation-RespiratoryRateExample.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [DataAbsentReason](http://terminology.hl7.org/7.3.0/CodeSystem-data-absent-reason.html): [FijiDiagnosticObservation](StructureDefinition-fiji-diagnostic-observation.md) and [FijiPathologyObservation](StructureDefinition-fiji-pathology-observation.md)
* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [FijiPathologyObservation](StructureDefinition-fiji-pathology-observation.md), [Observation/Example-BMI](Observation-Example-BMI.md)... Show 9 more, [Observation/Example-BodyHeight](Observation-Example-BodyHeight.md), [Observation/Example-BodyWeight](Observation-Example-BodyWeight.md), [Observation/ExampleArterialPO2](Observation-ExampleArterialPO2.md), [Observation/ExampleBloodPressure](Observation-ExampleBloodPressure.md), [Observation/FijiBodyTemperatureExample](Observation-FijiBodyTemperatureExample.md), [Observation/FijiHeadCircumferenceExample](Observation-FijiHeadCircumferenceExample.md), [Observation/HeartRateExample](Observation-HeartRateExample.md), [Observation/OxygenSaturationExample](Observation-OxygenSaturationExample.md) and [Observation/RespiratoryRateExample](Observation-RespiratoryRateExample.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [FijiDiagnosticObservation](StructureDefinition-fiji-diagnostic-observation.md)
* [ActCode](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html): [Encounter/FijiEncounterExample](Encounter-FijiEncounterExample.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ObservationInterpretation.html): [FijiBMI](StructureDefinition-fiji-vital-bmi.md), [FijiHeadCircumference](StructureDefinition-fiji-vital-head-circumference.md)... Show 13 more, [FijiHeight](StructureDefinition-fiji-vital-height.md), [FijiObsInterpretationVS](ValueSet-fiji-obs-interpretation-vs.md), [FijiOxygenSaturation](StructureDefinition-fiji-vital-oxygen-saturation.md), [FijiPathologyObservation](StructureDefinition-fiji-pathology-observation.md), [FijiRespiratoryRate](StructureDefinition-fiji-vital-respiratory-rate.md), [FijiVitalBloodPressure](StructureDefinition-fiji-vital-blood-pressure.md), [FijiVitalBodyTemperature](StructureDefinition-fiji-vital-body-temperature.md), [FijiVitalHeartRate](StructureDefinition-fiji-vital-heart-rate.md), [FijiWeight](StructureDefinition-fiji-vital-weight.md), [Observation/Example-BMI](Observation-Example-BMI.md), [Observation/ExampleBloodPressure](Observation-ExampleBloodPressure.md), [Observation/FijiBodyTemperatureExample](Observation-FijiBodyTemperatureExample.md) and [Observation/OxygenSaturationExample](Observation-OxygenSaturationExample.md)
* [ParticipationType](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ParticipationType.html): [Encounter/FijiEncounterExample](Encounter-FijiEncounterExample.md)


