# Fiji Immunization - Draft Fiji Core Implementation Guide v0.1.1

## Resource Profile: Fiji Immunization 

 

# Profile of Immunizations for Fiji Patient

 
This profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history associated with a patient. 

## Mandatory elements

 
The following elements must be recorded: 
* status - one of the following codes (completed, entered-in-error, not-done)
* statusReason - reason a vaccine was not administered (currently uses ICD11 valueset from DAK, suggest converting to SNOMED CT)
* vaccineCode - a vaccine code from the Immunization ValueSet This element should be coded with terminology from the defined valueset. If no appropriate value is available then a coded value from another terminology may be used. Free text entry should only be permitted if no coded value is available or to record historic immunizations.
* patient - a reference to a Fiji Patient
* occurrence[x] - the vaccine administration date can be recorded using one of the two options below 
* occurenceDateTime (recommended for use where possible)
* occurrenceString - this is a free text representation of the date or administration
 
 

## Other elements defined

 
* lotNumber - is not mandatory but should be recorded if known
* protocolApplied.doseNumber - should be recorded if multiple doses are required
* protocolApplied.seriesDoses - should be recorded where multiple doses are recommended for full immunity
* note - Extra information about the immunization that is not conveyed by the other attributes
 

## Terminology

 
Immunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists for the vaccine. Additional codes may be used where no matching code is present. 

## Alignment with Regional IGs

 
The following specifications have been reviewed in development of this profile. 
* Australian Clinical Data for Interoperability Release 2
* New Zealand Clinical Data for Interoperability 2026
* Australian AU Core Implementation Guide 2.0.0
* WHO DAK Administer Vaccine Immunization Elements
 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/health.gov.fhir.fj.core|current/StructureDefinition/StructureDefinition-fiji-immunization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fiji-immunization.csv), [Excel](../StructureDefinition-fiji-immunization.xlsx), [Schematron](../StructureDefinition-fiji-immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fiji-immunization",
  "url" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-immunization",
  "version" : "0.1.1",
  "name" : "FijiImmunization",
  "title" : "Fiji Immunization",
  "status" : "draft",
  "date" : "2026-08-06T07:01:07+00:00",
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
  "description" : "# Profile of Immunizations for Fiji Patient\n\nThis profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history \nassociated with a patient. \n\n## Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (completed, entered-in-error, not-done)\n* statusReason -  reason a vaccine was not administered (currently uses ICD11 valueset from DAK, suggest converting to SNOMED CT)\n* vaccineCode - a vaccine code from the Immunization ValueSet\nThis element should be coded with terminology from the defined valueset. If no appropriate value is available\nthen a coded value from another terminology may be used. Free text entry should only be permitted if no \ncoded value is available or to record historic immunizations.\n* patient - a reference to a  Fiji Patient\n* occurrence[x] -  the vaccine administration date can be recorded using one of the two options below\n  * occurenceDateTime  (recommended for use where possible)\n  * occurrenceString - this is a free text representation of the date or administration\n\n## Other elements defined\n* lotNumber - is not mandatory but should be recorded if known\n* protocolApplied.doseNumber - should be recorded if multiple doses are required\n* protocolApplied.seriesDoses - should be recorded where multiple doses are recommended for full immunity\n* note - Extra information about the immunization that is not conveyed by the other attributes\n\n\n\n## Terminology  \n\nImmunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists\nfor the vaccine.  Additional codes may be used where no matching code is present.\n\n\n\n## Alignment with Regional IGs  \n\nThe following specifications have been reviewed in development of this profile. \n-\tAustralian Clinical Data for Interoperability Release 2\n-\tNew Zealand Clinical Data for Interoperability 2026\n-\tAustralian AU Core Implementation Guide 2.0.0\n-\tWHO DAK Administer Vaccine Immunization Elements\n",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.statusReason",
      "path" : "Immunization.statusReason",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/immunization-status-reason"
      }
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://core.fhir.health.gov.fj/ValueSet/imm-vs"
      }
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"]
      }]
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Immunization.occurrence[x]:occurrenceDateTime",
      "path" : "Immunization.occurrence[x]",
      "sliceName" : "occurrenceDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.note",
      "path" : "Immunization.note",
      "mustSupport" : true
    }]
  }
}

```
