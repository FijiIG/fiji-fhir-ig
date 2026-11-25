CodeSystem: FijiMedCS
Id: fiji-msupply
Title: "Fiji MSupply Medication CodeSystem"
Description: """
A code system representing legacy MSupply medication codes used in Fiji,
for use in healthcare information exchange with legacy medication dispense information
and until a standardised codesystem for medications is agreed.

Codes and display names should be sourced from the
MSupply codes used in Fiji for dispensing medication.
"""
* ^url = $fiji-msupply-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1.0"

// uncomment the next line once the code system is fully populated with all relevant codeable concepts
// * ^content = #complete

// Populate with coded concepts using the syntax:
* #example "Example Medication description" "Example Medication definition"