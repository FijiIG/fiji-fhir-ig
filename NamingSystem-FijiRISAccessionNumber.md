# Fiji RIS Accession Number - Draft Fiji Core Implementation Guide v0.9.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fiji RIS Accession Number**

## NamingSystem: Fiji RIS Accession Number 

| | |
| :--- | :--- |
| *Official URL*:https://core.fhir.health.gov.fj/NamingSystem/FijiRISAccessionNumber | *Version*:0.9.1 |
| Active as of 2026-03-31 | *Computable Name*:FijiRISAccessionNumber |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.40.1005.31.6 | |
| **Copyright/Legal**: Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/) | |

 
NamingSystem for RIS Accession number. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "FijiRISAccessionNumber",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.identifier",
    "valueIdentifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.31.6"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.copyright",
    "valueMarkdown" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://core.fhir.health.gov.fj/NamingSystem/FijiRISAccessionNumber"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.9.1"
  }],
  "name" : "FijiRISAccessionNumber",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-03-31",
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
  "responsible" : "Ministry of Health and Medical Services, Fiji",
  "description" : "NamingSystem for RIS Accession number.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://fhir.health.gov.fj/identifier/ris-accession-number",
    "preferred" : true
  },
  {
    "type" : "uri",
    "value" : "http://health.gov.fj/FHIR/mris-accession-number",
    "preferred" : false
  }]
}

```
