# Fiji Patient Occupation - Draft Fiji Core Implementation Guide v0.1.1

## Extension: Fiji Patient Occupation 

Describes occupation of a Fiji Patient. This is based on the structure of the NZ FHIR Base extension for [ACC Patient Occupation](http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation) but is separately defined so as to enable a national/regional valueset for occupation codes.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fiji Patient](StructureDefinition-fiji-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-patient-occupation.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-patient-occupation.csv), [Excel](../StructureDefinition-fiji-patient-occupation.xlsx), [Schematron](../StructureDefinition-fiji-patient-occupation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-patient-occupation",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient-occupation",
  "version" : "0.1.1",
  "name" : "FijiPatientOccupation",
  "title" : "Fiji Patient Occupation",
  "status" : "active",
  "date" : "2026-08-20T22:55:52+00:00",
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
  "description" : "Describes occupation of a Fiji Patient.  This is based on the structure of the NZ FHIR Base extension for \n[ACC Patient Occupation](http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation)\nbut is separately defined so as to enable a national/regional valueset for occupation codes.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Fiji Patient Occupation",
      "definition" : "Describes occupation of a Fiji Patient.  This is based on the structure of the NZ FHIR Base extension for \n[ACC Patient Occupation](http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation)\nbut is separately defined so as to enable a national/regional valueset for occupation codes."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient-occupation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "min" : 1
    }]
  }
}

```
