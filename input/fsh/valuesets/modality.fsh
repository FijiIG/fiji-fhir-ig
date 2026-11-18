ValueSet: FijiDCMModalityVS
Id: fiji-dcm-modality-vs
Title: "Fiji Dicom Imaging Modality Value Set"
Description: """
Imaging acquisition modalities based on DICOM CID 29.
"""
* ^experimental = false
* ^version = "0.1.0"

* include codes from system $DCM
// TODO:  create a subset of codes used in the Fiji imaging environment