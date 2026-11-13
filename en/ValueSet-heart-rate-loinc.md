# Heart Rate LOINC Codes - Draft Fiji Core Implementation Guide v0.9.0

## ValueSet: Heart Rate LOINC Codes 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "heart-rate-loinc",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/heart-rate-loinc",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1005.48.27"
  }],
  "version" : "0.9.0",
  "name" : "HeartRateVS",
  "title" : "Heart Rate LOINC Codes",
  "status" : "draft",
  "date" : "2026-11-13T04:51:51+00:00",
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
  "description" : "LOINC codes for heart rate measurements, spot or average.",
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
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "8867-4",
        "display" : "Heart rate"
      },
      {
        "code" : "103205-1",
        "display" : "Mean heart rate"
      }]
    }]
  }
}

```
