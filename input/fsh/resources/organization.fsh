// Organization providing care for patients in this IG scope
Profile: FijiOrganization
Parent: Organization
Id: fiji-organization
Title: "Fiji Healthcare Service or Organization"
Description: "Profile for Fiji Healthcare Service or Organization"
* identifier 1..1 MS
* name 1..1 MS
* telecom 1..* MS
* address 0..* MS
* address only FijiAddress
