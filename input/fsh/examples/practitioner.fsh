Instance: FijiPractitionerExample
InstanceOf: FijiPractitioner
Usage: #example
Title: "Fiji Practitioner Example"
Description: """Example of a registered medical practitioner practising in Fiji.
Note: The registration number and names are for illustrative purposes only and are not intended to represent a verified practitioner record.
"""

* identifier[medicalRegistrationNumber].system = "https://fhir.health.gov.fj/identifier/practitioner-medical-registration"
* identifier[medicalRegistrationNumber].value = "MED-12345"

* name[official].use = #official
* name[official].family = "Nabose"
* name[official].given[0] = "Jone"
* name[official].given[1] = "Viliame"

* name[usual].use = #usual
* name[usual].family = "Nabose"
* name[usual].given[0] = "Jone"

* telecom[0].system = #phone
* telecom[0].value = "+679 331 0000"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "jone.nabose@example.org"
* telecom[1].use = #work

* address[0].text = "Hospital Road, Suva"
* address[0].use = #work
* address[0].type = #physical
* address[0].line[0] = "Hospital Road"
* address[0].city = "Suva"
* address[0].country = "Fiji"

* gender = #male

* qualification[0].code.text = "Bachelor of Medicine and Bachelor of Surgery"

* communication[0].coding[0].system = "urn:ietf:bcp:47"
* communication[0].coding[0].code = #en
* communication[0].text = "English"

* communication[1].coding[0].system = "urn:ietf:bcp:47"
* communication[1].coding[0].code = #fj
* communication[1].text = "Fijian"