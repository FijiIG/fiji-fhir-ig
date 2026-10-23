# Fiji Dicom Imaging Modality Value Set - Draft Fiji Core Implementation Guide v0.3.0

## ValueSet: Fiji Dicom Imaging Modality Value Set 

 **References** 

* [Fiji Imaging Diagnostic Report](StructureDefinition-fiji-imaging-diagnostic-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fiji-dcm-modality-vs",
  "url" : "https://core.fhir.health.gov.fj/ValueSet/fiji-dcm-modality-vs",
  "version" : "0.3.0",
  "name" : "FijiDCMModalityVS",
  "title" : "Fiji Dicom Imaging Modality Value Set",
  "status" : "draft",
  "date" : "2026-10-23T04:23:18+00:00",
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
  "description" : "Imaging acquisition modalities based on DICOM CID 29.",
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
      "system" : "http://dicom.nema.org/resources/ontology/DCM"
    }]
  }
}

```
