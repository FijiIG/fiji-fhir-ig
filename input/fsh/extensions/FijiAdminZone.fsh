Extension: FijiAdminZone
Id: fiji-admin-zone
Title: "Fiji Health Administration Zone"
Description: "The health administration zoning for the patient represented as Division, Sub-divsions, medical area, nursing zone and settlement"

* extension contains
    division 1..1 and
    subDivision 0..1 and
    medicalArea 0..1 and
    nursingZone 0..1 and
    settlement 0..1

* extension[division].value[x] only CodeableConcept
* extension[division].valueCodeableConcept from FijiDivisionVS

* extension[subDivision].value[x] only CodeableConcept
* extension[subDivision].valueCodeableConcept from FijiSubDivisionVS

* extension[medicalArea].value[x] only CodeableConcept
* extension[medicalArea].valueCodeableConcept from FijiDivisionVS

* extension[nursingZone].value[x] only CodeableConcept
* extension[nursingZone].valueCodeableConcept from FijiDivisionVS

* extension[settlement].value[x] only string
