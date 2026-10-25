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