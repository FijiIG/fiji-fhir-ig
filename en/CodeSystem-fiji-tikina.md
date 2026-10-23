# Fiji Tikina - Draft Fiji Core Implementation Guide v0.3.0

## CodeSystem: Fiji Tikina 

This Code system is referenced in the definition of the following value sets:

* [Fiji Tikina ValueSet](ValueSet-fiji-tikina-vs.md)
* [Fiji Yasana ValueSet](ValueSet-fiji-yasana-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fiji-tikina",
  "url" : "https://fhir.health.gov.fj/CodeSystem/fiji-tikina",
  "version" : "0.3.0",
  "name" : "FijiTikinaCS",
  "title" : "Fiji Tikina",
  "status" : "active",
  "experimental" : false,
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
  "description" : "A code system representing the tikina (districts) of Fiji\nfor use in healthcare information exchange.\n\nCodes are based on the Fiji geographic coding convention\nand should be validated against the adopted authoritative\ngeographic dataset.\n\nTikina are associated with their respective provinces.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "caseSensitive" : true,
  "hierarchyMeaning" : "grouped-by",
  "content" : "complete",
  "count" : 44,
  "concept" : [{
    "code" : "0101",
    "display" : "Ba"
  },
  {
    "code" : "0102",
    "display" : "Magodro"
  },
  {
    "code" : "0103",
    "display" : "Nadi"
  },
  {
    "code" : "0104",
    "display" : "Naviti"
  },
  {
    "code" : "0105",
    "display" : "Nawaka"
  },
  {
    "code" : "0106",
    "display" : "Tavua"
  },
  {
    "code" : "0107",
    "display" : "Vuda"
  },
  {
    "code" : "0108",
    "display" : "Yasawa"
  },
  {
    "code" : "0201",
    "display" : "Bua"
  },
  {
    "code" : "0202",
    "display" : "Vuya"
  },
  {
    "code" : "0203",
    "display" : "Wainunu"
  },
  {
    "code" : "0301",
    "display" : "Cakaudrove"
  },
  {
    "code" : "0302",
    "display" : "Nasavusavu"
  },
  {
    "code" : "0303",
    "display" : "Rabi"
  },
  {
    "code" : "0304",
    "display" : "Saqani"
  },
  {
    "code" : "0305",
    "display" : "Tunuloa"
  },
  {
    "code" : "0306",
    "display" : "Vaturova"
  },
  {
    "code" : "0307",
    "display" : "Wailevu"
  },
  {
    "code" : "0308",
    "display" : "Wainikeli"
  },
  {
    "code" : "0401",
    "display" : "Nabukelevu"
  },
  {
    "code" : "0402",
    "display" : "Naceva"
  },
  {
    "code" : "0403",
    "display" : "Nakasaleka"
  },
  {
    "code" : "0404",
    "display" : "Tavuki"
  },
  {
    "code" : "0501",
    "display" : "Cicia"
  },
  {
    "code" : "0502",
    "display" : "Kabara"
  },
  {
    "code" : "0503",
    "display" : "Lakeba"
  },
  {
    "code" : "0504",
    "display" : "Lomaloma"
  },
  {
    "code" : "0505",
    "display" : "Matuku"
  },
  {
    "code" : "0506",
    "display" : "Moala"
  },
  {
    "code" : "0507",
    "display" : "Moce"
  },
  {
    "code" : "0508",
    "display" : "Mualevu"
  },
  {
    "code" : "0509",
    "display" : "Nayau"
  },
  {
    "code" : "0511",
    "display" : "Ono"
  },
  {
    "code" : "0512",
    "display" : "Totoya"
  },
  {
    "code" : "0513",
    "display" : "Vulaga"
  },
  {
    "code" : "0602",
    "display" : "Gau"
  },
  {
    "code" : "0603",
    "display" : "Koro"
  },
  {
    "code" : "0604",
    "display" : "Nairai"
  },
  {
    "code" : "0605",
    "display" : "Ovalau"
  },
  {
    "code" : "0701",
    "display" : "Cikobia"
  },
  {
    "code" : "0702",
    "display" : "Dogotuki"
  },
  {
    "code" : "0703",
    "display" : "Labasa"
  },
  {
    "code" : "0704",
    "display" : "Macuata"
  },
  {
    "code" : "0705",
    "display" : "Sasa"
  }]
}

```
