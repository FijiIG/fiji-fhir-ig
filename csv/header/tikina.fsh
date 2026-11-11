CodeSystem: FijiTikinaCS
Id: fiji-tikina
Title: "Fiji Tikina CodeSystem"
Description: """
A code system representing the tikina (districts) of Fiji
for use in healthcare information exchange.

Codes and display names should be sourced from the
authoritative Fiji geographic administrative dataset
adopted by the Fiji Implementation Guide.
"""
* ^url = $tikina-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
// uncomment the next line once the code system is fully populated with all relevant codeable concepts
// * ^content = #complete

// Populate with coded concepts using the syntax:
// * #<code> "<display-name>" "<concept-definition>"