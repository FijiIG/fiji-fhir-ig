# Fiji Healthcare Service Request - Draft Fiji Core Implementation Guide v0.2.1

## Resource Profile: Fiji Healthcare Service Request 

**Usages:**

* Refer to this Profile: [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md) and [Fiji Laboratory Diagnostic Report](StructureDefinition-fiji-laboratory-diagnostic-report.md)
* Examples for this Profile: [ServiceRequest/sr-ct-head-001](ServiceRequest-sr-ct-head-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-service-request.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-service-request.csv), [Excel](../StructureDefinition-fiji-service-request.xlsx), [Schematron](../StructureDefinition-fiji-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-service-request",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-service-request",
  "version" : "0.2.1",
  "name" : "FijiServiceRequest",
  "title" : "Fiji Healthcare Service Request",
  "status" : "draft",
  "date" : "2026-10-06T07:16:04+00:00",
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
  "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.\n\nA service request  is a record of a request for a procedure or diagnostic or other service to be planned, proposed, or performed,\nwith or on a patient. The request will lead to either a Procedure or DiagnosticReport, which in turn may reference associated \nresources/documentation such as observations, images, findings that are relevant to the treatment/management of the subject. \n\nThis resource may be used to share relevant information required to support a referral or a transfer of care request from one \npractitioner or organization to another when a patient is required to be referred to another provider for a consultation\n /second opinion and/or for short term or longer term management of one or more health issues or problems..",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "mustSupport" : true
    }]
  }
}

```
