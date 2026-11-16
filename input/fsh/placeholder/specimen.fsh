Profile: FijiSpecimen
Parent: Specimen
Id: fiji-specimen
Title: "Fiji Specimen"
Description: """
Profile of Specimen for use in Fiji health information systems.  This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  
"""

* type 1..1 MS
* subject 1..1 MS
* subject only Reference(FijiPatient)

Instance: FijiSpecimenExample
InstanceOf: FijiSpecimen
Usage: #example
Title: "Fiji Specimen Placeholder Example"
Description: "This profile is an example of a placeholder to be extended in subsequent versions of the Fiji Core IG.  "

* status = #unavailable
* type = $specimen-type-cs#BDY
* subject = Reference(Patient/FijiPatientExample)