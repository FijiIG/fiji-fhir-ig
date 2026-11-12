CodeSystem: FijiDivisionCS
Id: fiji-division
Title: "Health administrative division codes in Fiji"
Description: "Health administrative division codes in Fiji"

* ^experimental = false
* ^caseSensitive = true
* ^url = $division-cs

* #central "Central" "Central division covers capital regions and surrounding provinces"
* #eastern "Eastern" "Eastern division Covers outer islands and remote areas like Levuka and Rotuma"
* #western "Western" "Western division covers western side of Viti Levu and nearby islands"
* #northern "Northern" "Northern division Covers Vanua Levu and Taveuni"

CodeSystem: FijiSubDivisionCS
Id: fiji-subdivision
Title: "Health administrative sub-division codes in Fiji"
Description: "Health administrative sub division codes in Fiji"

* ^experimental = false
* ^caseSensitive = true
* ^url = $subdivision-cs

* #rewa  "Rewa" "Rewa sub-division"
* #naitasiri  "Naitasiri" "Naitasiri sub-division"
* #tailevu  "Tailevu" "Tailevu sub-division"
* #serua-namosi  "SeruaNamosi" "Serua/Namosi subDivision"

* #lomaiviti  "LomaivitiLevuka" "Lomaiviti (Levuka)  sub-division"
* #lau  "LauLakebaLomaloma" "Lau (Lakeba, Lomaloma)  sub-division"
* #rotuma  "Rotuma" "Rotuma  sub-division"

* #nadi  "" "  sub-division"
* #lautoka-ba  "LautokaBa" "Lautoka/Ba sub-division"
* #tavua  "Tavua" "Tavua sub-division"
* #rakiraki  "Rakiraki" "Rakiraki sub-division"
* #sigatoka  "Sigatoka" "Sigatoka sub-division"

* #labasa  "Labasa" " Labasa sub-division"
* #savusavu  "Savusavu" "Savusavu sub-division"
* #bua  "BuaNabouwalu" "Bua (Nabouwalu) sub-division"
* #taveuni  "Taveuni" "Taveuni sub-division"


CodeSystem: FijiMedicalAreaCS
Id: fiji-medicalarea
Title: "Health administrative medical area codes in Fiji"
Description: "Health administrative medical area codes in Fiji"

* ^experimental = false
* ^caseSensitive = true
* ^url = $medicalarea-cs

* #area1 "Area1" "Medical area 1 (example only need to populate this code system)"

CodeSystem: FijiNursingZoneCS
Id: fiji-nursingzone
Title: "Health administrative nursing zone codes in Fiji"
Description: "Health administrative nursing zone codes in Fiji"

* ^experimental = false
* ^caseSensitive = true
* ^url = $nursingzone-cs

* #zone1 "Zone1" "Nursing zone 1 (example only need to populate this code system)"





ValueSet: FijiDivisionVS
Id: fiji-division
Title: "Valueset of Fiji Health Administration Divisions"
Description: "A valueset containing Fiji Health Administration Divisions"
* ^experimental = false
* include codes from system FijiDivisionCS


ValueSet: FijiSubDivisionVS
Id: fiji-sub-division
Title: "Valueset of Fiji Health Administration Sub-divisions"
Description: "A valueset containing Fiji Health Administration sub-divisions"
* ^experimental = false
* include codes from system FijiSubDivisionCS

ValueSet: FijiMedicalAreaVS
Id: fiji-medical-area
Title: "Valueset of Fiji Health Administration medical areas"
Description: "A valueset containing Fiji Health Administration  medical areas"
* ^experimental = false
* include codes from system FijiMedicalAreaCS


ValueSet: FijiNursingZoneVS
Id: fiji-nursing-zone
Title: "Valueset of Fiji Health Administration nursing zones"
Description: "A valueset containing Fiji Health Administration  nursing zones"
* ^experimental = false
* include codes from system FijiNursingZoneCS
