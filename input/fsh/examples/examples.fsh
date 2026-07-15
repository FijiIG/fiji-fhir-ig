// Fiji Patient Examples ---------------------------------------------------------------------------
Instance: FijiPatientExample1
InstanceOf: FijiPatient
Usage: #example
Description: """
Example patient with official and usual names, clan affiliation, and demographic details."""

* identifier[0].system = "http://health.example.org/fhir/identifier"
* identifier[0].value = "123456789"

* name[0].use = #official
* name[0].given[0] = "Michael"
* name[0].given[1] = "Taviri"
* name[0].family = "Kalo"
* name[0].text = "Michael Taviri Kalo"

* name[1].use = #usual
* name[1].given[0] = "Taviri"
* name[1].text = "Taviri"

* extension[clanAffiliation].valueCodeableConcept.text = "Nakamal Vaturanga"

* gender = #male
* birthDate = "1990-04-12"

Instance: FijiPatientExample2
InstanceOf: FijiPatient
Usage: #example
Description: """Example patient with official and usual names, clan affiliation, and demographic details."""

* identifier[0].system = "http://health.example.org/fhir/identifier"
* identifier[0].value = "987654321"

* name[0].use = #official
* name[0].given[0] = "Tevita"
* name[0].family = "Kalo"
* name[0].text = "Tevita Kalo"

* name[1].use = #usual
* name[1].prefix[0] = "Susuga"
* name[1].given[0] = "Tui"
* name[1].text = "Susuga Tui"

* extension[clanAffiliation].valueCodeableConcept.text = "Sa Malietoa"

* gender = #male
* birthDate = "1985-11-02"


Instance: FijiPatientFijiITaukei
InstanceOf: FijiPatient
Usage: #example
Title: "Fiji Patient - iTaukei with Mataqali"
Description: """
Example Fijian patient of iTaukei background demonstrating:
- Simulated national health identifier
- Official and usual names
- Mataqali clan affiliation
"""

///////////////////////////////////////////////////////////////
// NATIONAL HEALTH IDENTIFIER
///////////////////////////////////////////////////////////////

* identifier[0].system = "http://fhir.health.gov.fj/identifier/nhi"
* identifier[0].value = "FJ-NHI-982345671"

///////////////////////////////////////////////////////////////
// NAME
///////////////////////////////////////////////////////////////

* name[0].use = #official
* name[0].family = "Nabou"
* name[0].given = "Jone"

* name[1].use = #usual
* name[1].given = "Jone"
* name[1].text = "Jone Nabou"

///////////////////////////////////////////////////////////////
// CLAN (MATAQALI)
///////////////////////////////////////////////////////////////

* extension[clanAffiliation].valueCodeableConcept.text = "Mataqali Vunisei"

///////////////////////////////////////////////////////////////
// DEMOGRAPHICS
///////////////////////////////////////////////////////////////

* gender = #male
* birthDate = "1992-04-17"

///////////////////////////////////////////////////////////////
// ADDRESS
///////////////////////////////////////////////////////////////

* address.text = "Nadi Village, Ba Province"
* address.country = "FJ"

Instance: FijiPatientFijiIndo
InstanceOf: FijiPatient
Usage: #example
Title: "Fiji Patient – Indo-Fijian"
Description: """
Example Indo-Fijian patient demonstrating:
- Simulated national health identifier
- Official and usual names
- No clan affiliation
"""

///////////////////////////////////////////////////////////////
// NATIONAL HEALTH IDENTIFIER
///////////////////////////////////////////////////////////////

* identifier[0].system = "http://fhir.health.gov.fj/identifier/nhi"
* identifier[0].value = "FJ-NHI-771245903"

///////////////////////////////////////////////////////////////
// NAME
///////////////////////////////////////////////////////////////

* name[0].use = #official
* name[0].family = "Prasad"
* name[0].given = "Anita"

* name[1].use = #usual
* name[1].given = "Anita"

///////////////////////////////////////////////////////////////
// DEMOGRAPHICS
///////////////////////////////////////////////////////////////

* gender = #female
* birthDate = "1985-09-02"

///////////////////////////////////////////////////////////////
// ADDRESS
///////////////////////////////////////////////////////////////

* address.text = "Lautoka, Western Division"
* address.country = "FJ"


// Fiji Practitioner Examples ----------------------------------------------------------------------

// Fiji PractitionerRole Examples ----------------------------------------------------------------------
Instance: FijiPractitionerRoleExample
InstanceOf: FijiPractitionerRole
Usage: #example
Title: "Fiji Practitioner Role District Hospital GP"
Description: "General Practitioner role at district hospital for registered Fiji practitioner."

* practitioner = Reference(FijiPractitionerExample)
* organization = Reference(FijiHospitalExample)

* code[0].text = "General Practitioner"

* specialty[0].text = "Family Medicine"

* period.start = "2023-01-01"

* telecom.system = #phone
* telecom.value = "+685123456"


// Fiji Organization Examples ----------------------------------------------------------------------
Instance: FijiHospitalExample
InstanceOf: Organization
Usage: #example
Title: "Fiji Hospital Example Fiji Divisional Hospital"
Description: """
Example Fiji hospital organization in Fiji.
Includes organizational identifier, contact information, and address.
"""

///////////////////////////////////////////////////////////////
// IDENTIFIER
///////////////////////////////////////////////////////////////

* identifier.system = "http://fhir.health.gov.fj/identifier/organization"
* identifier.value = "FJ-HOSP-SUH-001"

///////////////////////////////////////////////////////////////
// NAME
///////////////////////////////////////////////////////////////

* name = "Suva Divisional Hospital"

///////////////////////////////////////////////////////////////
// TELECOM
///////////////////////////////////////////////////////////////

* telecom[0].system = #phone
* telecom[0].value = "+6793313444"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "info@suvahospital.gov.fj"
* telecom[1].use = #work

///////////////////////////////////////////////////////////////
// ADDRESS
///////////////////////////////////////////////////////////////

* address.line = "Amy Street"
* address.city = "Suva"
* address.district = "Central Division"
* address.country = "FJ"