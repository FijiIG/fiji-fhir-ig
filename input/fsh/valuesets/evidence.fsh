ValueSet: FijiEvidenceVS
Id: fiji-evidence-vs
Title: "Condition Evidence Value Set"
Description: "Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases."
* ^status = #active
* ^experimental = false
* ^version = "0.1.0"

// 1. SNOMED CT: Include clinical findings, MINUS formal disorders
// option a, filtered by the IPS refset
// * include codes from system $SCT where constraint = "(< 404684003 MINUS < 64572001) AND ^ 816080008"
* include codes from system $SCT where constraint = "(< 404684003 MINUS < 64572001)"

// 2. SNOMED CT: Include diagnostic procedures f
// option a filtered by IPS refset
// * include codes from system $SCT where constraint = "< 71388002 AND ^ 816080008"
* include codes from system $SCT where constraint = "< 71388002"

// 3. LOINC: Include lab and radiology tests
* include codes from system $loinc where ancestor = #LP29684-5 "Laboratory studies"
* include codes from system $loinc where ancestor = #LP74263-2 "Radiology studies"
