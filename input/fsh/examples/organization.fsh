Instance: FijiHospitalExample
InstanceOf: FijiOrganization
Usage: #example
Title: "Example Fiji Hospital"
Description: "Example of a hospital providing healthcare services in Fiji."

* identifier[nationalOrganizationId].value = "HOSP-001"
* active = true

* type[0].coding[0].system = "http://snomed.info/sct"
* type[0].coding[0].code = #22232009
* type[0].coding[0].display = "Hospital"
* type[0].text = "Hospital"

* name = "Namosi District Hospital"

* telecom[0].system = #phone
* telecom[0].value = "+679 345 6000"
* telecom[0].use = #work

* address[0].text = "Namosi District Hospital, Namosi, Fiji"
* address[0].line[0] = "Hospital Road"
* address[0].city = "Namosi"
* address[0].country = "Fiji"


Instance: FijiClinicExample
InstanceOf: FijiOrganization
Usage: #example
Title: "Example Fiji Clinic"
Description: "Example of a primary care clinic providing community healthcare services in Fiji."

* identifier[nationalOrganizationId].value = "CLINIC-001"

* active = true

* type[0].coding[0].system = "http://snomed.info/sct"
* type[0].coding[0].code = #394761003
* type[0].coding[0].display = "General practitioner practice site"
* type[0].text = "Primary Care Clinic"

* name = "Navua Community Clinic"

* telecom[0].system = #phone
* telecom[0].value = "+679 346 7000"
* telecom[0].use = #work

* address[0].text = "Navua Community Clinic, Navua, Fiji"
* address[0].line[0] = "Main Road"
* address[0].city = "Navua"
* address[0].country = "Fiji"
