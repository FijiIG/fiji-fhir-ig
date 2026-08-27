CodeSystem: FijiDivisionCS
Id: fiji-division-cs
Title: "Health administrative division codes in Fiji"
Description: "Health administrative division codes in Fiji"

* #central "Central" "Central division covers capital regions and surrounding provinces"
* #eastern "Eastern" "Eastern division Covers outer islands and remote areas like Levuka and Rotuma"
* #western "Western" "Western division covers western side of Viti Levu and nearby islands"
* #northern "Northern" "Northern division Covers Vanua Levu and Taveuni"

CodeSystem: FijiSubDivisionCS
Id: fiji-sub-division-cs
Title: "Health administrative sub-division codes in Fiji"
Description: "Health administrative sub division codes in Fiji"

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
Id: fiji-medical-area-cs
Title: "Health administrative medical area codes in Fiji"
Description: "Health administrative medical area codes in Fiji"

* #area1 "Area1" "Medical area 1 (example only need to populate this code system)"

CodeSystem: FijiNursingZoneCS
Id: fiji-nursing-zone-cs
Title: "Health administrative nursing zone codes in Fiji"
Description: "Health administrative nursing zone codes in Fiji"

* #zone1 "Zone1" "Nursing zone 1 (example only need to populate this code system)"





ValueSet: FijiDivisionVS
Id: fiji-division-vs
Title: "Valueset of Fiji Health Administration Divisions"
Description: "A valueset containing Fiji Health Administration Divisions"

* include codes from system FijiDivisionCS


ValueSet: FijiSubDivisionVS
Id: fiji-sub-division-vs
Title: "Valueset of Fiji Health Administration Sub-divisions"
Description: "A valueset containing Fiji Health Administration sub-divisions"

* include codes from system FijiSubDivisionCS

ValueSet: FijiMedicalAreaVS
Id: fiji-medical-area-vs
Title: "Valueset of Fiji Health Administration medical areas"
Description: "A valueset containing Fiji Health Administration  medical areas"

* include codes from system FijiMedicalAreaCS


ValueSet: FijiNursingZoneVS
Id: fiji-nursing-zone-vs
Title: "Valueset of Fiji Health Administration nursing zones"
Description: "A valueset containing Fiji Health Administration  nursing zones"

* include codes from system FijiNursingZoneCS
