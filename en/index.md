# Fiji Core Implementation Guide - Draft Fiji Core Implementation Guide v0.1.1

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

* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://tx.fhir.org/r4/ValueSet/x-loinc2.82): [FijiBMI](StructureDefinition-fiji-vital-bmi.md), [FijiHeight](StructureDefinition-fiji-vital-height.md)... Show 9 more, [FijiObservation](StructureDefinition-fiji-observation.md), [FijiOxygenSaturation](StructureDefinition-fiji-vital-oxygen-saturation.md), [FijiRespiratoryRate](StructureDefinition-fiji-vital-respiratory-rate.md), [FijiVitalBloodPressure](StructureDefinition-fiji-vital-blood-pressure.md), [FijiVitalBodyTemperature](StructureDefinition-fiji-vital-body-temperature.md), [FijiVitalHeartRate](StructureDefinition-fiji-vital-heart-rate.md), [FijiWeight](StructureDefinition-fiji-vital-weight.md), [HeartRateVS](ValueSet-heart-rate-loinc.md) and [ObsVS](ValueSet-obs-vs.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.2.0/CodeSystem-observation-category.html): [FijiBMI](StructureDefinition-fiji-vital-bmi.md), [FijiHeight](StructureDefinition-fiji-vital-height.md)... Show 7 more, [FijiObservation](StructureDefinition-fiji-observation.md), [FijiOxygenSaturation](StructureDefinition-fiji-vital-oxygen-saturation.md), [FijiRespiratoryRate](StructureDefinition-fiji-vital-respiratory-rate.md), [FijiVitalBloodPressure](StructureDefinition-fiji-vital-blood-pressure.md), [FijiVitalBodyTemperature](StructureDefinition-fiji-vital-body-temperature.md), [FijiVitalHeartRate](StructureDefinition-fiji-vital-heart-rate.md) and [FijiWeight](StructureDefinition-fiji-vital-weight.md)


