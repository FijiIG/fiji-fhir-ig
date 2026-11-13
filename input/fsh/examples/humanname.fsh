
// FijiHumanName Examples  for inline use in FijiPatient--------------------------------------------------------------
Instance: InlineFijiHumanNameOfficialOnly
InstanceOf: FijiHumanName
Usage: #inline
Description: "Example of official name"

* use = #official
* given[0] = "Maria"
* given[1] = "Litia"
* text = "Maria Litia"

Instance: InlineFijiHumanNameDual
InstanceOf: FijiHumanName
Usage: #inline
Description: "Example of offiical name"

* use = #official
* given[0] = "Tevita"
* family = "Kalo"
* text = "Tevita Kalo"

Instance: InlineFijiHumanNameUsual
InstanceOf: FijiHumanName
Usage: #inline
Description: "Example of usual name"

* use = #usual
* prefix[0] = "Susuga"
* given[0] = "Tui"
* text = "Susuga Tui"

Instance: InlineFijiHumanNameUsualOnly
InstanceOf: FijiHumanName
Usage: #inline
Description: "Example of usual name"

* use = #usual
* given[0] = "Taviri"
* text = "Taviri"