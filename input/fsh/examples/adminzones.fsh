Instance: FijiDivisionExample
InstanceOf: FijiAdministrativeZone
Usage: #example
Title: "Example Fiji Divsion"
Description: "Example of a Division level Administrative Zone."

* active = true

* type[0].coding[0].system = $admin-zones-cs
* type[0].coding[0].code = #division
* type[0].coding[0].display = "Division"
* type[0].text = "Division - highest level health admin zone"

* name = "Northern Division - Vanua Levu and Taveuni"

Instance: FijiDivisionExampleCentral
InstanceOf: FijiAdministrativeZone
Usage: #example
Title: "Example Fiji Divsion"
Description: "Example of a Division level Administrative Zone."

* active = true
* type[0].coding[0].system = $admin-zones-cs
* type[0].coding[0].code = #division
* type[0].coding[0].display = "Division"
* type[0].text = "Division - highest level health admin zone"

* name = "Central Division - capital regions and surrounding provinces"

Instance: FijiSubdivisionExample
InstanceOf: FijiAdministrativeZone
Usage: #example
Title: "Example Fiji Subdivsion"
Description: "Example of a Subdivision level Administrative Zone."

* active = true
* type[0].coding[0].system = $admin-zones-cs
* type[0].coding[0].code = #subdivision
* type[0].coding[0].display = "Subdivision"
* type[0].text = "Subdivision - health admin zone part of a Division"
* name = "Savusavu sub-division"
* partOf = Reference(Organization/FijiDivisionExample)


Instance: FijiSubdivisionExampleNamosi
InstanceOf: FijiAdministrativeZone
Usage: #example
Title: "Example Fiji Subdivsion Serua Namosi"
Description: "Example of a Subdivision level Administrative Zone."

* active = true
* type[0].coding[0].system = $admin-zones-cs
* type[0].coding[0].code = #subdivision
* type[0].coding[0].display = "Subdivision"
* type[0].text = "Subdivision - health admin zone part of a Division"
* name = "Serua/Namosi sub-division"
* partOf = Reference(Organization/FijiDivisionExampleCentral)

Instance: FijiMedicalAreaExample
InstanceOf: FijiAdministrativeZone
Usage: #example
Title: "Example Fiji Medical Area"
Description: "Example of a Medical Area level Administrative Zone."

* active = true
* type[0].coding[0].system = $admin-zones-cs
* type[0].coding[0].code = #medicalarea
* type[0].coding[0].display = "MedicalArea"
* type[0].text = "Medical Area - health admin zone part of a Subdivision"
* name = "Medical Area 1 - somewhere in Savusavu"
* partOf = Reference(Organization/FijiSubdivisionExample)


Instance: FijiNursingZoneExample
InstanceOf: FijiAdministrativeZone
Usage: #example
Title: "Example Fiji Nursing Zone"
Description: "Example of a Nursing Zone level Administrative Zone."

* active = true
* type[0].coding[0].system = $admin-zones-cs
* type[0].coding[0].code = #nursingzone
* type[0].coding[0].display = "NursingZone"
* type[0].text = "Nursing Zone - health admin zone part of a Medical Area"
* name = "Nursing Zone 1 - in Medical Area 1 somewhere in Savusavu"
* partOf = Reference(Organization/FijiMedicalAreaExample)
