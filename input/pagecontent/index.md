### Overview

> **Project Status: In Development**
>This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

The Fiji Core FHIR Implementation Guide defines the nationally agreed core clinical and administrative data standards for interoperable health information exchange in Fiji. The FHIR Implementation Guide (IG) defines a common set of reusable FHIR artifacts, including: profiles, extensions, concepts, identifiers and terminology to support interoperable health information exchange in Fiji.

The high level goals of this IG are:
- Interoperability specification for health data exchange in Fiji 
- Compliance/compatibility guidance for aquisition or development of future health systems/software
- Interface/data structure definition basis for future Health Information Exchange based on OpenHIE
- Future support for Internation Patient Summary (FHIR IPS)

The Fiji Core IG is intended to be maintained as a living artifact and is expected to evolve based on feedback and usage experience from the implementation community. Artifacts are included where there is a clear Fiji-specific requirement, where reuse across implementations is expected, and where the artifact is appropriate for inclusion in a national guide. Where suitable definitions already exist in the core FHIR specification, international implementation guides, or other recognised registries, reuse is preferred over defining new Fiji-specific artifacts.

This version of the Fiji Core IG defines [24 profiles](resources.html) with data standards supporting the exchange of administative healthcare,  clinical & vital signs resources.   Constraints defined within the profiles are deliberately somewhat relaxed in this initial version of the IG.  This is in order to manage migration into FHIR of legacy data that is of clinical value but is lacking in terms of: use of free text vs. Codeable Concepts, use of private coding systems,  and/or missing data elements that would be desirable in future implementations.  

Future versions of this IG will progressively strengthen the data standard requirements and extend the scope of resource profiles according to defined priorities for Fiji healthcare interoperability.

This initial version

### Audience

This guide is intended for:

* Health ministries
* Software developers & Implementers
* Clinical informatics specialists
* Clinical/Technical Advisors and Working Groups
* Vendors

### Profiles and other Artifacts

| Category | Description |
|------------|-------------|
| [Resource Profiles](resources.html) | Fiji-specific constrained FHIR resources |
| [Data Type Profiles](datatypes.html) | Fiji-specific constrained or extended FHIR datatypes |
| [Extensions](extensions.html)   | Fiji-specific extension data elements |
| [Terminology](terminology.html) | Terminology bindings |

### Contributions, Improvements and Feedback

If you would like to contribute to this Implementation Guide, firstly review the "Profiles and other Artifacts" links,  and then follow the steps outlined in [Getting Started](gettingstarted.html).


### Primary Contributors  

The Draft Fiji Core FHIR IG is being developed in collaboration with MHMS Fiji, under the supervision of Digital Health, Technical Advisory Group (TAG), with support from CSIRO Strengthening Standards Capability Project, and Australian Government.

Primary guidance, IG design & development has been provided by [Daniel Foulkes](https://www.linkedin.com/in/daniel-foulkes).

### IP Statement
This Implementation Guide is released under the Creative Commons CC0 1.0 Universal Public Domain Dedication. 


{% include ip-statements.xhtml %}


