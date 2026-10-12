// yavusa 0..1 and
// mataqali 0..1 and
// tokatoka 0..1

CodeSystem: FijiYasanaCS
Id: fiji-yasana-cs
Title: "Yasana (province) largest administrative division codes in Fiji iTaukei society"
Description: "Yasana (province) largest administrative division codes in Fiji iTaukei society"

* #ba "Ba" "Ba"
* #nadroga-navosa "" ""
* #ra "" ""
* #tailevu "" ""
* #naitasiri "" ""
* #namosi "" ""
* #serua "" ""
* #rewa "" ""
* #cakaudrove "" ""
* #macuata "" ""
* #bua "" ""
* #lau "" ""
* #lomaiviti "" ""

ValueSet: FijiYasanaVS
Id: fiji-yasana-vs
Title: "Fiji Yasana ValueSet"
Description: """
The set of yasana codes recognised by the
Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/ValueSet/fiji-yasana"
* ^status = #active
* include codes from system FijiTikinaCS


CodeSystem: FijiTikinaCS
Id: fiji-tikina
Title: "Fiji Tikina"
Description: """
A code system representing the tikina (districts) of Fiji
for use in healthcare information exchange.

Codes are based on the Fiji geographic coding convention
and should be validated against the adopted authoritative
geographic dataset.

Tikina are associated with their respective provinces.
"""
* ^url = "https://fhir.health.gov.fj/CodeSystem/fiji-tikina"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #grouped-by

// Ba Province
* #0101 "Ba"
* #0102 "Magodro"
* #0103 "Nadi"
* #0104 "Naviti"
* #0105 "Nawaka"
* #0106 "Tavua"
* #0107 "Vuda"
* #0108 "Yasawa"

// Bua Province
* #0201 "Bua"
* #0202 "Vuya"
* #0203 "Wainunu"

// Cakaudrove Province
* #0301 "Cakaudrove"
* #0302 "Nasavusavu"
* #0303 "Rabi"
* #0304 "Saqani"
* #0305 "Tunuloa"
* #0306 "Vaturova"
* #0307 "Wailevu"
* #0308 "Wainikeli"

// Kadavu Province
* #0401 "Nabukelevu"
* #0402 "Naceva"
* #0403 "Nakasaleka"
* #0404 "Tavuki"

// Lau Province
* #0501 "Cicia"
* #0502 "Kabara"
* #0503 "Lakeba"
* #0504 "Lomaloma"
* #0505 "Matuku"
* #0506 "Moala"
* #0507 "Moce"
* #0508 "Mualevu"
* #0509 "Nayau"
* #0511 "Ono"
* #0512 "Totoya"
* #0513 "Vulaga"

// Lomaiviti Province
* #0602 "Gau"
* #0603 "Koro"
* #0604 "Nairai"
* #0605 "Ovalau"

// Macuata Province
* #0701 "Cikobia"
* #0702 "Dogotuki"
* #0703 "Labasa"
* #0704 "Macuata"
* #0705 "Sasa"



ValueSet: FijiTikinaVS
Id: fiji-tikina-vs
Title: "Fiji Tikina ValueSet"
Description: """
The set of tikina codes recognised by the
Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/ValueSet/fiji-tikina"
* ^status = #active
* include codes from system FijiTikinaCS



CodeSystem: FijiKorodinaCS
Id: fiji-korodina
Title: "Fiji Korodina"
Description: """
A code system representing korodina (wards) in Fiji
for use in healthcare information exchange.

Codes and display names should be sourced from the
authoritative Fiji geographic administrative dataset
adopted by the Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/CodeSystem/fiji-korodina"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Populate with verified korodina codes.
// Example syntax:
// * #<official-code> "<official-display-name>"


ValueSet: FijiKorodinaVS
Id: fiji-korodina-vs
Title: "Fiji Korodina ValueSet"
Description: """
The set of korodina codes recognised by the
Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/ValueSet/fiji-korodina"
* ^status = #active
* include codes from system FijiKorodinaCS


CodeSystem: FijiYavusaCS
Id: fiji-yavusa
Title: "Fiji Yavusa"
Description: """
A code system representing yavusa in Fiji
for use in healthcare information exchange.

Codes and display names should be sourced from the
authoritative Fiji geographic administrative dataset
adopted by the Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/CodeSystem/fiji-yavusa"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Populate with verified yavusa codes.
// Example syntax:
// * #<official-code> "<official-display-name>"


ValueSet: FijiYavusaVS
Id: fiji-yavusa-vs
Title: "Fiji Yavusa ValueSet"
Description: """
The set of yavusa codes recognised by the
Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/ValueSet/fiji-yavusa"
* ^status = #active
* include codes from system FijiYavusaCS


CodeSystem: FijiMataqaliCS
Id: fiji-mataqali
Title: "Fiji Mataqali"
Description: """
A code system representing mataqali recognised in Fiji,
for use in healthcare information exchange where
identification of a mataqali is required.

Codes and display names must be sourced from an
authoritative dataset approved for the intended use.
Access, disclosure and use of customary information
must respect applicable Fiji laws and governance.
"""
* ^url = "https://fhir.health.gov.fj/CodeSystem/fiji-mataqali"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #fragment

// Add verified mataqali codes using the official
// identifier and display name.
// Example syntax:
// * #<official-code> "<official-display-name>"


ValueSet: FijiMataqaliVS
Id: fiji-mataqali-vs
Title: "Fiji Mataqali ValueSet"
Description: """
Mataqali codes recognised by the Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/ValueSet/fiji-mataqali"
* ^status = #active
* include codes from system FijiMataqaliCS


CodeSystem: FijiTokatokaCS
Id: fiji-tokatoka
Title: "Fiji Tokatoka"
Description: """
A code system representing tokatoka recognised in Fiji,
for use in healthcare information exchange where
identification of a tokatoka is required.

Codes and display names must be sourced from an
authoritative dataset approved for the intended use.
Access, disclosure and use of customary information
must respect applicable Fiji laws and governance.
"""
* ^url = "https://fhir.health.gov.fj/CodeSystem/fiji-tokatoka"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #fragment

// Add verified tokatoka codes using the official
// identifier and display name.
// Example syntax:
// * #<official-code> "<official-display-name>"



ValueSet: FijiTokatokaVS
Id: fiji-tokatoka-vs
Title: "Fiji Tokatoka ValueSet"
Description: """
Tokatoka codes recognised by the Fiji Implementation Guide.
"""
* ^url = "https://fhir.health.gov.fj/ValueSet/fiji-tokatoka"
* ^status = #active
* include codes from system FijiTokatokaCS
