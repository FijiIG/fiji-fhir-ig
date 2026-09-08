ValueSet: FijiVitalMethodVS
Id: fiji-vital-method-vs
Title: "Fiji Vital Sign Measurement Method ValueSet"
Description: """
SNOMED CT concepts representing methods used to obtain vital sign
measurements, including body temperature, blood pressure, body height,
body weight, heart rate, oxygen saturation and respiratory rate.
This may be extended as required including with local codes used in historic data.
"""

// ---------------------------------------------------------------------
// Body temperature
// ---------------------------------------------------------------------

* include $SCT#89003005 "Oral temperature taking"
* include $SCT#386725007 "Tympanic temperature taking"
* include $SCT#415882003 "Axillary temperature taking"

// ---------------------------------------------------------------------
// Blood pressure
// ---------------------------------------------------------------------

* include $SCT#77938009 "Arterial pressure monitoring, invasive method"
* include $SCT#17146006 "Arterial pressure monitoring, non-invasive method"
* include $SCT#37931006 "Auscultation"
* include $SCT#765172009 "Doppler ultrasound"
* include $SCT#13385008 "Mediate auscultation"
* include $SCT#113011001 "Palpation"
* include $SCT#31813000 "Vascular oscillometry"

// ---------------------------------------------------------------------
// Height / length / Weight
// ---------------------------------------------------------------------

* include $SCT#414135002 "Estimated"
* include $SCT#258104002 "Measured"
* include $SCT#733985002 "Reported"


// ---------------------------------------------------------------------
// Heart rate
// ---------------------------------------------------------------------

// * include $SCT#37931006 "Auscultation"
* include $SCT#268447006 "Doppler studies"
* include $SCT#29303009 "Electrocardiographic procedure"
// * include $SCT#13385008 "Mediate auscultation"
// * include $SCT#264598005 "Oximetry"

// ---------------------------------------------------------------------
// Oxygen saturation
// ---------------------------------------------------------------------

* include $SCT#104847001 "Oxygen saturation measurement"
* include $SCT#264598005 "Oximetry"

// ---------------------------------------------------------------------
// Respiratory rate
// ---------------------------------------------------------------------

// * include $SCT#37931006 "Auscultation"
* include $SCT#32750006 "Inspection"
* include $SCT#239516002 "Monitoring procedure"