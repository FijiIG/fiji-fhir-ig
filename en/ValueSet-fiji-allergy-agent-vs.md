# Allergy Causative Agent Value Set for Fiji Patient - Draft Fiji Core Implementation Guide v0.1.1

## ValueSet: Allergy Causative Agent Value Set for Fiji Patient 

 
A subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS. 

 **References** 

* [Fiji Allergy/Intolerance](StructureDefinition-fiji-allergy-intolerance.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-allergy-agent-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-allergy-agent-vs",
  "version" : "0.1.1",
  "name" : "FijiAllergyAgentVS",
  "title" : "Allergy Causative Agent Value Set for Fiji Patient",
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
  "description" : "A subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 762766007 |Edible substance| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 406455002 |Allergen class| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 425620007 |Metal| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 373873005 |Pharmaceutical / biologic product| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "expression",
        "op" : "=",
        "value" : "< 410942007 |Drug or medicament| AND ^ 10811000132104 |International Patient Summary reference set|"
      }]
    }]
  }
}

```
