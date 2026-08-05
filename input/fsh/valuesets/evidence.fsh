ValueSet: FijiEvidenceVS
Id: fiji-evidence-vs
Title: "Condition Evidence Value Set for Fiji Core IG"
Description: "Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases."

// 1. SNOMED CT: Include clinical findings, MINUS formal disorders, filtered by the IPS refset
* include codes from system $SCT where expression = "(< 404684003 |Clinical finding| MINUS < 64572001 |Disease|) AND ^ 10811000132104 |International Patient Summary reference set|"

// 2. SNOMED CT: Include diagnostic procedures from the IPS refset
* include codes from system $SCT where expression = "< 71388002 |Procedure| AND ^ 10811000132104 |International Patient Summary reference set|"

// 3. LOINC: Include lab and radiology tests
* include codes from system $loinc where concept is-a #LP29684-5 "Laboratory studies"
* include codes from system $loinc where concept is-a #LP29700-9 "Radiology"