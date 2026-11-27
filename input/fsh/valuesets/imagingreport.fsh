ValueSet: FijiImagingReportVS
Id: fiji-imaging-report-vs
Title: "Imaging Report Value Set"
Description: "Fiji imaging report including SNOMED CT concepts for radiology report and imaging report"
* ^status = #active
* ^experimental = false
* ^publisher = "MHMS Fiji"
* ^version = "0.1.0"

* include codes from system $SCT where constraint = "<<  371527006"
* include codes from system $SCT where constraint = "<<  4201000179104"