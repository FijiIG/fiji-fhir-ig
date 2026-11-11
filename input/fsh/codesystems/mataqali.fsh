CodeSystem: FijiMataqaliCS
Id: fiji-mataqali
Title: "Fiji Mataqali CodeSystem"
Description: """
A code system representing mataqali recognised in Fiji,
for use in healthcare information exchange where
identification of a mataqali is required.

Codes and display names should be sourced from the
authoritative Fiji geographic administrative dataset
adopted by the Fiji Implementation Guide.
"""
* ^url = $mataqali-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
// uncomment the next line once the code system is fully populated with all relevant codeable concepts
// * ^content = #complete

// Populate with coded concepts using the syntax:
// * #<code> "<display-name>" "<concept-definition>"
* #tova-natokalau "Tova Natokalau" "Tova Natokalau"
