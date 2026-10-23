# Resource Draft Fiji Core Implementation Guide



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "health-gov-fhir-fj-core",
  "language" : "en",
  "url" : "https://core.fhir.health.gov.fj/ImplementationGuide/health-gov-fhir-fj-core",
  "version" : "0.3.0",
  "name" : "FijiCoreIG",
  "title" : "Draft Fiji Core Implementation Guide",
  "status" : "draft",
  "date" : "2026-10-23T04:23:18+00:00",
  "publisher" : "MHMS Fiji",
  "contact" : [{
    "name" : "MHMS Fiji",
    "telecom" : [{
      "system" : "url",
      "value" : "https://fhir.health.gov.fj"
    }]
  },
  {
    "name" : "Support",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.fhir.health.gov.fj"
    }]
  }],
  "description" : "Implementation Guide for Fiji FHIR Interoperability.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FJ",
      "display" : "Fiji"
    }]
  }],
  "copyright" : "Distributed under the Creative Commons CC0-1.0 License (https://creativecommons.org/publicdomain/zero/1.0/)",
  "packageId" : "health.gov.fhir.fj.core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.4.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://core.fhir.health.gov.fj/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-allergy-agent-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-allergy-agent-vs"
      },
      "name" : "Allergy Causative Agent Value Set for Fiji Patient",
      "description" : "A subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-birthdate-verified-indicator.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/birthdate-verified-indicator"
      },
      "name" : "Birth Date Verified Indicator",
      "description" : "Indicates that the associated Patient.birthDate has been verified. Absence of this extension means no assertion is made about accuracy.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-blood-pressure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-blood-pressure"
      },
      "name" : "Blood Pressure Observation",
      "description" : "This profile defines the requirements and usage of a resource recording Blood Pressure vital observations.\nIt is based on the FHIR Blood Pressure Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code - code defining this is a blood pressure measurement\n  * code.coding.system - must be http ://loinc.org \n  * code.coding.code - must be 85354-9\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Blood pressure was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change\n* component for systolic reading which must have\n    * component.code.coding.system = http://loinc.org\n    * component.code.coding.code = **'8480-6'**\n    * component.valueQuantity.value - decimal value of bp\n    * component.valueQuantity.system = http://unitsofmeasure.org\n    * component.valueQuantity.code = **'mm[Hg]'**\n\n* component for diastolic reading which must have\n    * component.code.coding.system = http://loinc.org\n    * component.code.coding.code = **'8462-4'**\n    * component.valueQuantity.value - decimal value of bp\n    * component.valueQuantity.system = http://unitsofmeasure.org\n    * component.valueQuantity.code = **'mm[Hg]'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the BMI measurement took place\t \n* method -  a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-bmi.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-bmi"
      },
      "name" : "BMI Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording BMI vital observations.\nIt is based on the FHIR BMI Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 85354-9\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the BMI was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change\n* valueQuantity - the BMI value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'kg/m2'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the BMI measurement took place\t \n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-FijiBodyTemperatureExample.html"
      }],
      "reference" : {
        "reference" : "Observation/FijiBodyTemperatureExample"
      },
      "name" : "Body temperature vital observation",
      "description" : "Body temperature observation example with reference ranges and interpretation.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-body-temperature"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-body-temperature.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-body-temperature"
      },
      "name" : "Body Temperature Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Body Temperature vital observations.\nIt is based on the FHIR Body Temperature Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 8310-5\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Body Temperature was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the BMI did not change\n* valueQuantity - the Blood Pressure value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'Cel'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the BMI measurement took place\t \n* method -  a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-evidence-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-evidence-vs"
      },
      "name" : "Condition Evidence Value Set for Fiji Core IG",
      "description" : "Evidence: Signs, symptoms, procedures, and labs, explicitly excluding formal diseases.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-condition-example-diabetes2.html"
      }],
      "reference" : {
        "reference" : "Condition/condition-example-diabetes2"
      },
      "name" : "Condition Example - Type 2 Diabetes Mellitus",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-condition-code-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-condition-code-vs"
      },
      "name" : "Condition/Diagnosis code valueset",
      "description" : "Condition Code valueset for Fiji Core. \nProposed valueset is taken from SNOMED codes curated for International Patient Summary.\nIncludes \"clinical finding\"  codes and codes for \"situation with explicit content\".",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-encounter-reason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-encounter-reason-vs"
      },
      "name" : "Encounter reason code valueset",
      "description" : "Encounter reason valueset for Fiji Core. \nProposed valueset is taken from SNOMED Problem/Diagnosis and Procedure refsets.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleArterialPO2.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleArterialPO2"
      },
      "name" : "Example arterial oxygen partial pressure",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Example-BodyHeight.html"
      }],
      "reference" : {
        "reference" : "Observation/Example-BodyHeight"
      },
      "name" : "Example Body Height",
      "description" : "Example body height observation including measurement device reference.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-height"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Example-BodyWeight.html"
      }],
      "reference" : {
        "reference" : "Observation/Example-BodyWeight"
      },
      "name" : "Example Body Weight",
      "description" : "Example of Body Weight vital measurement",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-weight"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-dr-ct-head-001.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/dr-ct-head-001"
      },
      "name" : "Example CT Head Diagnostic Report",
      "description" : "Example final diagnostic report for a CT examination of the head.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-imaging-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-ct-head-001.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-ct-head-001"
      },
      "name" : "Example CT Head Service Request",
      "description" : "Example service request for a CT head examination.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-service-request"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-FijiClinicExample.html"
      }],
      "reference" : {
        "reference" : "Organization/FijiClinicExample"
      },
      "name" : "Example Fiji Clinic",
      "description" : "Example of a primary care clinic providing community healthcare services in Fiji.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-FijiHospitalExample.html"
      }],
      "reference" : {
        "reference" : "Organization/FijiHospitalExample"
      },
      "name" : "Example Fiji Hospital",
      "description" : "Example of a hospital providing healthcare services in Fiji.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleHDLCholesterol.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleHDLCholesterol"
      },
      "name" : "Example HDL Cholesterol",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleLDLCholesterol.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleLDLCholesterol"
      },
      "name" : "Example LDL Cholesterol",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleLipidPanel.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleLipidPanel"
      },
      "name" : "Example Lipid Panel",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-ExampleLipidPanelReport.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/ExampleLipidPanelReport"
      },
      "name" : "Example Lipid Panel Report",
      "description" : "Example laboratory report containing a lipid panel.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-laboratory-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-ExampleLipidSpecimen.html"
      }],
      "reference" : {
        "reference" : "Specimen/ExampleLipidSpecimen"
      },
      "name" : "Example Lipid Panel Specimen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-FijiEncounterExample.html"
      }],
      "reference" : {
        "reference" : "Encounter/FijiEncounterExample"
      },
      "name" : "Example outpatient encounter",
      "description" : "Example of an outpatient encounter in a Fiji healthcare setting",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleTotalCholesterol.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleTotalCholesterol"
      },
      "name" : "Example Total Cholesterol",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleTriglycerides.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleTriglycerides"
      },
      "name" : "Example Triglycerides",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-pathology-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Example-BMI.html"
      }],
      "reference" : {
        "reference" : "Observation/Example-BMI"
      },
      "name" : "Example-BMI",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-bmi"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ExampleBloodPressure.html"
      }],
      "reference" : {
        "reference" : "Observation/ExampleBloodPressure"
      },
      "name" : "ExampleBloodPressure",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-blood-pressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-address.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-address"
      },
      "name" : "Fiji Address",
      "description" : "Address profile designed for Fiji where addresses are commonly descriptive and village-based rather than street-based.\nThis profile supports a range of address formats and general usage guidance.\nIn all cases:\n- text is a mandatory field and should be considered the primary representation of the fully address.\n- line is used for free text address lines and may relate to a landmark, school, church etc. rather than a street address.\n- Postal code is often not used, so is currently optional and may be removed (ie 0..0) if not required in the future\n- Country supports international interoperability\n- geolocation is added as an optional extension to support use case where GPS coordinates are available. It is expected that this will become more common.\n\nRecommended mapping of address fields are below but should be validated and used with Fiji specific examples.\n\n| FHIR Element        | Typical Use            | Notes                          |\n| ------------------- | ------------------------------ | ------------------------------ |\n| `text`              | Full narrative address         | Often the primary address form |\n| `line`              | Landmark, compound, street     | Free-text                      |\n| `city`              | Town                           | Mainly urban areas             |\n| `district`          | Tikina / district              | Country dependent              |\n| `state`             | Division                       | Country dependent              |\n| `extension:village` | Village                        | Most rural addresses           |",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-allergy-intolerance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-allergy-intolerance"
      },
      "name" : "Fiji Allergy/Intolerance",
      "description" : "## Overview\n\nThe **Fiji AllergyIntolerance Profile** defines the minimum data elements and terminology requirements for representing a patient's known or suspected allergies and intolerances within the Fiji FHIR implementation.\n\nThe profile is based on the FHIR `AllergyIntolerance` resource and constrains the `patient` reference to the **Fiji Patient** profile. Where applicable, terminology bindings use Fiji-specific value sets to support consistent representation of allergy agents and clinical manifestations.\n\nThis profile can be used to represent both confirmed allergies and other adverse reactions or intolerances where clinically relevant.\n\n## Key Elements\n\n| Element | Cardinality | Must Support | Description |\n|---|---:|:---:|---|\n| `code` | 1..1 | ✓ | **Allergy or intolerance agent.** Identifies the substance, medication, food, or other agent to which the patient has an allergy or intolerance. Bound to the **Fiji Allergy Agent ValueSet** with an extensible binding. |\n| `clinicalStatus` | 0..1 | ✓ | Indicates the current clinical status of the allergy or intolerance, such as active or resolved. |\n| `verificationStatus` | 0..1 | ✓ | Indicates the degree of certainty that the allergy or intolerance is valid, such as confirmed, unconfirmed, or refuted. |\n| `category` | 1..* | ✓ | Identifies the general category of the allergy or intolerance, such as medication, food, or environment. |\n| `criticality` | 0..1 | ✓ | Indicates the potential clinical impact of the allergy or intolerance, such as low, high, or unable to assess. |\n| `patient` | 1..1 |  | Identifies the patient to whom the allergy or intolerance applies. The reference is constrained to the **Fiji Patient** profile. |\n| `onsetDateTime` | 0..1 | ✓ | Records the date and time when the allergy or intolerance was first known or began. |\n| `note` | 0..* | ✓ | Provides additional free-text clinical information about the allergy or intolerance that is not captured by the structured elements. |\n| `recorder` | 0..1 |  | Identifies the practitioner or practitioner role who recorded the allergy or intolerance. References are constrained to **Fiji Practitioner** or **Fiji PractitionerRole**. |\n| `reaction` | 0..* | ✓ | Describes a clinical reaction associated with the allergy or intolerance, including its manifestations and severity. |\n| `reaction.manifestation` | 1..* | ✓ | **Clinical symptoms/signs associated with the adverse reaction.** Bound to the **Fiji Condition Code ValueSet** using a preferred binding. |\n| `reaction.severity` | 0..1 | ✓ | Indicates the severity of the reaction, such as mild, moderate, or severe. |\n\n## Terminology\n\nThe following terminology bindings are defined by this profile:\n\n| Element | Value Set | Description |\n|---|---|---|\n| `code` | **Fiji Allergy Agent** | Based on subset of SNOMED CT concepts representing substances or products that cause allergies or intolerances, aligned with global IPS.|\n| `reaction.manifestation` | **Fiji Condition Code** | Based on SNOMED CT concepts for \"clinical finding\" and \"situation with explicit content\" curated for International Patient Summary|\n\nThe extensible binding on `code` allows an allergy or intolerance agent to be represented using a code outside the Fiji Allergy Agent ValueSet when an appropriate concept is not available in the value set.\n\nThe preferred binding on `reaction.manifestation` encourages implementers to use concepts from the Fiji Condition Code ValueSet while allowing alternative codes where appropriate.\n\n## Usage\n\nAn `AllergyIntolerance` instance should identify the **allergy or intolerance agent** using `code` and, where a reaction has occurred, describe the associated **clinical manifestations** using `reaction.manifestation`. The `reaction.severity` element may be used to communicate the clinical severity of the reaction.\n\nWhere the identity of the person responsible for recording the information is known, `recorder` should reference the relevant Fiji Practitioner or Fiji PractitionerRole.\n\n### No Known Allergies \nNo Known Allergies representation\nThe recommended 'best practice' for representing 'No Known Allergies' requires a combination of the following element settings:\n1. `code` : should include both the SNOMED CT \"716186003\" and the HL7 \"no-known-allergies\" codings\n1. `clinicalStatus` : should be set to \"active\"\n1. `verificationStatus` : should be set to \"confirmed\"\nThis indicates that a clinican has formally verified that status, and the use of both codings maximizes interoperability\n** Note: ** Any other recorded Active allergy for the patient should negate a No Known Allergy record.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-FijiAllergyIntoleranceExample.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/FijiAllergyIntoleranceExample"
      },
      "name" : "Fiji AllergyIntolerance Example",
      "description" : "Example of an AllergyIntolerance for a patient with a confirmed penicillin allergy.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-allergy-intolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-FijiMedicationDispenseExample.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/FijiMedicationDispenseExample"
      },
      "name" : "Fiji Amoxicillin Medication Dispense Example",
      "description" : "Example of dispensing amoxicillin against a medication request\nfor FijiPatientExample.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-body-site-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-body-site-vs"
      },
      "name" : "Fiji Body Site (Anatomical Structure) Value Set",
      "description" : "Valueset for bodysite/anatomical structures.\nUsed for Condition.bodySite and Immunization.site\nValues from SNOMED CT anatomical structures.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-condition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-condition"
      },
      "name" : "Fiji Condition",
      "description" : "# Profile of Condition (Diagnosis, Problem List item etc) as defined for Fiji Context.\n\nThis profile sets minimum expectations for an Condition resource to record, search, and fetch diagnoses or problmen-list items \nassociated with a patient. \n\n### Mandatory elements  \nThe following elements must be recorded:\n* code - a coded concept for the condition.  The recommendation for future terminology of this element should be selected from SNOMED CT \n Clinical Finding or Situation with Explicit Context reference sets.   Current and past records may use ICD-10 AM terminology.\nFree text entry should only be permitted if no coded value is available or to record uncoded historic condition information.\n* subject - a reference to a  Fiji Patient\n* clinicalStatus - the clinical status of the condition from one of (active | recurrence | relapse | inactive | remission | resolved)\n* category - at least one item from the extensible valueset (problem-list-item | encounter-diagnosis)\n\n### Other elements defined\n* verificationStatus - the verification status supports or declines the clincal status (unconfirmed | provisional | differential | confirmed | refuted | entered-in-error)\n* onset[x] -  the estimated or actual date or age when the condition was first observed/diagnosed\n* abatement[x] - the estimated or actual date when the condition was resolved or went into remission\n* severity - subjective severity of condition coded from [condition severity valueset](https://hl7.org/fhir/R4/valueset-condition-severity.html)\n* bodySite - a coded concept specifying the part of the body used in this measurement preferred to use SNOMED CT body structure concepts\n* evidence.code - coded concept for the manifestation or symptom leading to diagnosis (there may be multiple values).  These concepts \nmay be from SNOMED CT clinical finding or procedure sets, or LOINC lab studies or radiology codes.\n\n### Terminology  \n\nAs noted above, it is intended that future deployments will use SNOMED CT valuesets for most coded concepts,  but current and \npast information is dominantly recorded using ICD-10-AM terminology for condition codes.\n\n### Alignment with Regional IGs  \n\nThe following specifications have been reviewed in development of this profile. \n-\tAustralian Clinical Data for Interoperability Release 2\n-\tNew Zealand Clinical Data for Interoperability 2026\n-\tAustralian AU Core Implementation Guide 2.0.0",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-diagnostic-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-diagnostic-observation"
      },
      "name" : "Fiji Diagnostic Observation",
      "description" : "## Fiji Diagnostic Observation\n\nThe **Fiji Diagnostic Observation** profile represents an individual observation or finding produced as part of a radiology or other diagnostic investigation. It is based on the FHIR `Observation` resource and provides constraints and terminology bindings appropriate for diagnostic results in Fiji.\n\nThe profile is intended to support the representation of individual diagnostic findings, including coded radiology findings, anatomical locations, performers, and component observations.\n\n### Key Elements\n\n| Element | Cardinality | Description |\n|---|---:|---|\n| `status` | 1..1 | The status of the diagnostic observation, indicating whether the result is preliminary, final, amended, or has another applicable status. |\n| `category` | 1..* | Classifies the observation as belonging to a diagnostic service or discipline. Bound to the FHIR Diagnostic Service Sections value set with a preferred binding. |\n| `code` | 1..1 | Identifies the type of diagnostic finding or observation. Bound to the Fiji Radiology Findings Value Set with a preferred binding. |\n| `subject` | 1..1 | Identifies the patient who is the subject of the diagnostic observation. Restricted to `FijiPatient`. |\n| `effective[x]` | 1..1 | The clinically relevant date/time or period associated with the observation. |\n| `performer` | 0..* | Identifies the individual or organisation responsible for performing or producing the observation. Restricted to a Fiji patient, practitioner, practitioner role, or organisation. |\n| `value[x]` | 0..1 | The result of the diagnostic observation. The type of value is determined by the nature of the observation. |\n| `dataAbsentReason` | 0..1 | Provides a reason when a result is not available. Bound to the FHIR Data Absent Reason value set with an extensible binding. |\n| `bodySite` | 0..1 | Identifies the anatomical site associated with the diagnostic observation. Bound to the Fiji Body Site Value Set with an extensible binding. |\n| `hasMember` | 0..* | References other diagnostic observations that are related to or form part of this observation. References are restricted to `FijiDiagnosticObservation`. |\n| `component` | 0..* | Represents component observations that form part of the diagnostic observation. |\n| `component.code` | 1..1 | Identifies the type of the component observation. |\n| `component.value[x]` | 0..1 | The result of the component observation. |\n| `component.dataAbsentReason` | 0..1 | Provides a reason when the value of a component observation is not available. |\n\n### Terminology Bindings\n\n| Element | Value Set | Binding | Purpose |\n|---|---|---|---|\n| `category` | Diagnostic Service Sections | Preferred | Identifies the diagnostic service or discipline associated with the observation. |\n| `code` | `FijiRadiologyFindingsVS` | Preferred | Identifies the diagnostic finding or observation using relevant SNOMED CT concepts. |\n| `dataAbsentReason` | FHIR Data Absent Reason | Extensible | Provides a standard reason when an observation result is unavailable. |\n| `bodySite` | `FijiBodySiteVS` | Extensible | Identifies the anatomical or acquired body structure associated with the observation using SNOMED CT. |\n\n### Diagnostic Finding Code\n\nThe `code` element identifies the diagnostic finding represented by the observation and is bound to `FijiRadiologyFindingsVS`.\n\nThe value set is defined using SNOMED CT concepts that are both clinical findings and associated with imaging procedures:\n\n`descendant-of 404684003 |Clinical finding| AND descendant-of 363679005 |Imaging procedure|`\n\nThis provides a terminology-based approach to identifying findings relevant to radiology and imaging rather than maintaining a fixed list of individual concepts.\n\n### Body Site\n\nWhere applicable, `bodySite` identifies the anatomical location to which the diagnostic observation relates. The element is bound to `FijiBodySiteVS` using an extensible binding.\n\nThe value set is based on SNOMED CT anatomical or acquired body structure concepts:\n\n`< 442083009 |Anatomical or acquired body structure (body structure)|`\n\nThis allows standard SNOMED CT concepts to be used to represent the anatomical site while allowing additional concepts where required.\n\n### Component Observations\n\nThe `component` element may be used when a diagnostic observation contains additional observations that are integral to the main observation. Each component must have a `code` identifying what is being observed and may contain either a result in `value[x]` or a `dataAbsentReason` when the result is unavailable.\n\nComponents are appropriate where the individual results form part of a single overall observation and do not need to be represented as separate resources.\n\n### Related Diagnostic Observations\n\nThe `hasMember` element may be used to associate the observation with other diagnostic observations. References are restricted to `FijiDiagnosticObservation`, supporting the representation of groups of related diagnostic findings.\n\nFor example, a diagnostic observation may use `hasMember` to reference separate observations representing individual findings from the same diagnostic investigation.\n\n### Missing Results\n\nBoth the main observation and its components support `dataAbsentReason`. This should be used when a result that would otherwise be represented in `value[x]` is not available, rather than leaving the reason for the missing result implicit.\n\nThe profile uses the standard FHIR Data Absent Reason value set with an **extensible** binding.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-FijiDiagnosticObservationChestXrayReport.html"
      }],
      "reference" : {
        "reference" : "Observation/FijiDiagnosticObservationChestXrayReport"
      },
      "name" : "Fiji Diagnostic Observation - Chest X-ray Report",
      "description" : "Example of a radiology diagnostic observation representing a chest\nX-ray report with multiple individual findings.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-FijiDiagnosticObservationPleuralEffusion.html"
      }],
      "reference" : {
        "reference" : "Observation/FijiDiagnosticObservationPleuralEffusion"
      },
      "name" : "Fiji Diagnostic Observation - Pleural Effusion",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-FijiDiagnosticObservationPulmonaryConsolidation.html"
      }],
      "reference" : {
        "reference" : "Observation/FijiDiagnosticObservationPulmonaryConsolidation"
      },
      "name" : "Fiji Diagnostic Observation - Pulmonary Consolidation",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-diagnostic-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-dcm-modality-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-dcm-modality-vs"
      },
      "name" : "Fiji Dicom Imaging Modality Value Set",
      "description" : "Imaging acquisition modalities based on DICOM CID 29.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-FijiHeadCircumferenceExample.html"
      }],
      "reference" : {
        "reference" : "Observation/FijiHeadCircumferenceExample"
      },
      "name" : "Fiji Head Circumference Example",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-head-circumference"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-admin-zone.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-admin-zone"
      },
      "name" : "Fiji Health Administration Zone",
      "description" : "The health administration zoning for the patient represented as Division, Sub-divsions, medical area, nursing zone and settlement",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-device.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-device"
      },
      "name" : "Fiji Healthcare Device",
      "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  \nA device is a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. \nThe device may be a medical or non-medical device.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-encounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-encounter"
      },
      "name" : "Fiji Healthcare Encounter",
      "description" : "## Fiji Healthcare Encounter\n\nThe **Fiji Healthcare Encounter** profile represents an interaction between a patient and the healthcare system in which healthcare services are provided. It is based on the FHIR `Encounter` resource and is intended to support the recording of clinical encounters within the scope of this Implementation Guide.\n\nThe profile constrains the patient, encounter classification, service type, participants, timing, reasons for the encounter, locations, and responsible healthcare organisation. Where appropriate, references are restricted to the corresponding Fiji profiles.\n\n### Key Elements\n\n| Element | Cardinality | Type / Binding | Description |\n|---|---:|---|---|\n| `identifier` | 0..* | Identifier | Business identifier(s) assigned to the encounter, such as a facility encounter number or local medical record number. |\n| `status` | **1..1** | Code | Current status of the encounter, such as planned, in-progress, finished, or cancelled. |\n| `class` | **1..1** | `FijiEncounterClassVS` | Classification of the encounter, for example inpatient, outpatient, emergency, or ambulatory care. |\n| `serviceType` | 0..* | `FijiServiceTypeVS` (preferred) | The type of healthcare service provided during the encounter. |\n| `subject` | **1..1** | Reference(`FijiPatient`) | The patient who is the subject of the encounter. |\n| `participant.type` | 0..* | `$participant-type-vs` | Identifies the role or function of a participant in the encounter, such as attending clinician or consultant. |\n| `participant.individual` | 0..1 | Reference(`FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`) | Identifies the person participating in the encounter. |\n| `period` | 0..1 | Period | The date and time during which the encounter took place or is expected to take place. |\n| `reasonCode` | 0..* | `FijiEncounterReasonVS` (preferred) | Coded reason for the encounter, such as a presenting complaint, clinical problem, or other reason for seeking care. |\n| `reasonReference` | 0..* | Reference(`FijiCondition` or `FijiProcedure`) | References a condition or procedure that is the reason for the encounter. |\n| `location.location` | 0..1 | Reference(`FijiLocation`) | The physical location where the encounter occurred. |\n| `serviceProvider` | 0..1 | Reference(`FijiOrganization`) | The organisation responsible for providing the healthcare services associated with the encounter. |\n\n### Encounter Classification\n\nThe `class` element is mandatory and is bound to the **`$enc-class-vs`** value set. This identifies the broad setting or classification of the encounter and should be used consistently to distinguish, for example, inpatient, outpatient, emergency, and other forms of healthcare delivery.\n\n### Service Type\n\n`serviceType` identifies the specific type of healthcare service being provided. It is bound with a **preferred** binding to `FijiServiceTypeVS`, allowing implementations to use the Fiji-defined terminology where applicable while permitting other codes where necessary.\n\n### Patient and Participants\n\nThe `subject` element is mandatory and is restricted to a reference to a `FijiPatient`.\n\nEncounter participants may be recorded using `participant.type` to describe their role and `participant.individual` to identify the participating person. Participants are restricted to a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiRelatedPerson`.\n\n### Reason for Encounter\n\nThe reason for the encounter can be represented using either:\n\n- `reasonCode` for a coded reason that does not require a reference to another resource; or\n- `reasonReference` when the reason is represented by an existing `FijiCondition` or `FijiProcedure` resource.\n\nThe `reasonCode` element has a preferred binding to `FijiEncounterReasonVS`.\n\n### Location and Service Provider\n\nThe `location.location` element identifies where the encounter occurred and is restricted to a `FijiLocation`.\n\nThe `serviceProvider` identifies the organisation responsible for the healthcare service and is restricted to a `FijiOrganization`.\n\n### Terminology Bindings\n\n| Element | Value Set | Binding |\n|---|---|---|\n| `class` | `$enc-class-vs` | **Required** |\n| `serviceType` | `FijiServiceTypeVS` | **Preferred** |\n| `participant.type` | `$participant-type-vs` | **Required** |\n| `reasonCode` | `FijiEncounterReasonVS` | **Preferred** |\n\n### Relationship to Other Resources\n\nA `FijiEncounter` may be associated with other clinical and administrative resources, including:\n\n- **Patient** – identifies the patient receiving care.\n- **Practitioner / PractitionerRole** – identifies healthcare professionals involved in the encounter.\n- **RelatedPerson** – identifies other people participating in the patient's care.\n- **Condition** – may identify a condition that is the reason for the encounter.\n- **Procedure** – may identify a procedure associated with or motivating the encounter.\n- **Location** – identifies where care was provided.\n- **Organization** – identifies the healthcare organisation responsible for the encounter.\n\nThis profile is currently **work in progress** and may be subject to further refinement as encounter requirements for the Fiji implementation are established.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-location.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-location"
      },
      "name" : "Fiji Healthcare Location",
      "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  \nA Location includes both incidental locations (a place which is used for healthcare without prior designation or authorization) and dedicated, formally appointed locations.\nThese locations are not intended to cover parts of the body, or locations on a patient where something occurred (i.e. a patient's broken leg), but can happily cover the location where the patient broke the leg (the playground)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-organization-role-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-organization-role-vs"
      },
      "name" : "Fiji Healthcare Organization Role Type Value Set",
      "description" : "Valueset for Healthcare Organization Role Type.\nValues from SNOMED CT Hospital environment, Site of care, Outpatient environment, and Inpatient environment.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-procedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-procedure"
      },
      "name" : "Fiji Healthcare Procedure",
      "description" : "# Fiji Healthcare Procedure\n\n## Overview\n\nThe `FijiProcedure` profile defines how the FHIR `Procedure` resource is used to record current and historical procedures performed on or for a patient within the Fiji Healthcare Implementation Guide.\n\nA procedure is an activity performed on, with, or for a patient as part of the provision of healthcare or support services. Examples include surgical and diagnostic procedures, endoscopic procedures, biopsies, counselling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modifications, and exercise.\n\nProcedures may be performed by healthcare professionals, service providers, friends or relatives, or by the patient themselves.\n\nThis profile constrains the standard FHIR `Procedure` resource to support consistent recording of procedure details, including the procedure performed, its status, the patient, the associated encounter and service request, the performers, the reasons for the procedure, the anatomical site, the outcome, and any complications.\n\n## Resource Details\n\n| Property | Value |\n|---|---|\n| Resource | `Procedure` |\n| Profile | `FijiProcedure` |\n| Profile ID | `fiji-procedure` |\n| Parent | `Procedure` |\n| Title | Fiji Healthcare Procedure |\n\n## Profile Elements\n\nThe following table describes the key elements defined or constrained by the profile. Cardinalities and terminology bindings reflect the supplied FSH.\n\n| Element | Cardinality | Type / Reference | Terminology Binding | Description |\n|---|---|---|---|---|\n| `basedOn` | 0..* | Reference(`FijiServiceRequest`) | — | References the service request(s) that authorised or initiated the procedure. |\n| `status` | 1..1 | Code | FHIR Procedure status codes | Indicates the current status of the procedure, such as preparation, in progress, completed, or not done. |\n| `category` | 0..1 | CodeableConcept | `$proc-cat-vs` (Preferred) | Classifies the procedure into a broader category, such as a surgical or diagnostic procedure. |\n| `code` | 1..1 | CodeableConcept | `$proc-code-ips-vs` (Preferred) | Identifies the specific procedure performed or intended, using an appropriate procedure code. |\n| `subject` | 1..1 | Reference(`FijiPatient`) | — | Identifies the patient on whom, with whom, or for whom the procedure was performed. |\n| `encounter` | 0..1 | Reference(`FijiEncounter`) | — | References the healthcare encounter associated with the procedure, when applicable. |\n| `performed[x]` | 0..1 | `dateTime`, `Period`, `string`, `Age`, `Range`, or `Timing` | — | Records when the procedure was performed or the period during which it took place. |\n| `performer` | 0..* | BackboneElement | — | Identifies the individuals or organisations involved in performing the procedure. |\n| `performer.actor` | — | Reference(`FijiPractitioner`, `FijiPractitionerRole`, `FijiOrganization`, or `FijiPatient`) | — | Identifies the person, role, organisation, or patient who performed the procedure. |\n| `reasonCode` | 0..* | CodeableConcept | `$proc-reason-vs` (Preferred) | Records the reason or clinical indication for performing the procedure. |\n| `bodySite` | 0..* | CodeableConcept | `FijiBodySiteVS` (Extensible) | Identifies the anatomical location on which the procedure was performed. |\n| `outcome` | 0..1 | CodeableConcept | `$proc-outcome-vs` (Preferred) | Records the outcome of the procedure, where known. |\n| `complication` | 0..* | CodeableConcept | `FijiConditionCodeVS` (Preferred) | Records complications associated with the procedure. |\n| `note` | 0..* | Annotation | — | Provides additional narrative information about the procedure. |\n\n## Implementation Guidance\n\n### Procedure Identification and Classification\n\nThe `code` element is mandatory and identifies the specific procedure. Implementations should use appropriate codes from the preferred `$proc-code-ips-vs` value set. The optional `category` element provides a broader classification using `$proc-cat-vs`.\n\n### Status and Timing\n\nThe `status` element is mandatory and indicates the lifecycle state of the procedure. The `performed[x]` element records the procedure's timing when available. Implementations should distinguish between a procedure that was completed, is in progress, or was not performed, using the appropriate status and timing information.\n\n### Patient, Encounter and Service Request References\n\nThe `subject` element must reference a `FijiPatient`. Where applicable, `encounter` links the procedure to a `FijiEncounter`, while `basedOn` links it to one or more `FijiServiceRequest` resources.\n\nThese references support traceability between the patient, the clinical encounter, the requested service, and the procedure performed.\n\n### Performers\n\nThe `performer` element records those involved in performing the procedure. The `performer.actor` reference is constrained to the following Fiji profiles:\n\n- `FijiPractitioner`\n- `FijiPractitionerRole`\n- `FijiOrganization`\n- `FijiPatient`\n\nThis allows procedures performed by healthcare professionals, healthcare organisations, or patients themselves to be represented.\n\n### Clinical Context and Anatomical Site\n\nThe `reasonCode` element captures the clinical reason or indication for the procedure. The `bodySite` element identifies the relevant anatomical site and uses the `FijiBodySiteVS` value set with an extensible binding.\n\nImplementations should record these elements when the information is relevant and available.\n\n### Outcomes and Complications\n\nThe optional `outcome` element records the result of the procedure using the preferred `$proc-outcome-vs` value set. The `complication` element allows one or more complications to be recorded using the preferred `FijiConditionCodeVS` value set.\n\n### Additional Notes\n\nThe `note` element supports narrative information that supplements the structured procedure data, such as relevant clinical observations or additional details about how the procedure was performed.\n\n## Conformance Requirements\n\n- The `status`, `code`, and `subject` elements are mandatory.\n- The `subject` must reference a `FijiPatient`.\n- The `basedOn` element, when present, must reference a `FijiServiceRequest`.\n- The `encounter` element, when present, must reference a `FijiEncounter`.\n- The `performer.actor` reference is restricted to the specified Fiji practitioner, practitioner role, organisation, or patient profiles.\n- Terminology bindings marked **Preferred** should be followed where suitable codes are available.\n- The `bodySite` binding is **Extensible**; other codes may be used when an appropriate concept is not available in the specified value set.\n- Elements marked Must Support (`MS`) are expected to be supported by conformant implementations in accordance with the implementation guide's Must Support requirements.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-related-person.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-related-person"
      },
      "name" : "Fiji Healthcare Related Person",
      "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-organization"
      },
      "name" : "Fiji Healthcare Service or Organization",
      "description" : "# Fiji Healthcare Service or Organization\n\n## Overview\n\nThe `FijiOrganization` profile represents a healthcare organization, facility, service provider, or other organizational entity involved in the delivery or administration of healthcare within the scope of the Fiji Implementation Guide (IG).\n\nThis profile is based on the FHIR `Organization` resource and supports the identification of healthcare organizations, classification of their roles, contact details, physical addresses, and relationships between organizational entities.\n\nEvery `FijiOrganization` resource **must include a national organization identifier** issued or recognized within the Fiji healthcare context. This identifier is represented by the `identifier[nationalOrganizationId]` slice and uses the identifier system:\n\n`https://fhir.health.gov.fj/identifier/organization`\n\nThe national organization identifier provides a consistent means of identifying organizations across systems and supports interoperability between healthcare applications and services.\n\nThe profile supports a range of healthcare entities, including hospitals, health centres, clinics, nursing stations, laboratories, and other healthcare service providers. Organizations may be associated with a parent organization to represent organizational hierarchies, such as a health facility belonging to a larger healthcare administration.\n\n## Key Elements\n\nThe following table describes the key elements defined or constrained by the `FijiOrganization` profile.\n\n| Element | Cardinality | Type | Description and Usage |\n|---|---|---|---|\n| `identifier` | 1..* | `Identifier` | One or more identifiers for the organization. At least one identifier must conform to the `nationalOrganizationId` slice, using the required national identifier system. Additional identifiers using other systems are permitted. |\n| `identifier[nationalOrganizationId]` | 1..1 | `Identifier` | The mandatory national organization identifier. Its `system` is fixed to `https://fhir.health.gov.fj/identifier/organization`, and its `value` is required. |\n| `active` | 0..1 | `boolean` | Indicates whether the organization's record is in active use. This element is marked as Must Support, allowing implementations to indicate whether an organization is currently active. |\n| `type` | 0..* | `CodeableConcept` | Describes the kind or role of organization, such as a hospital, health centre, laboratory, or other healthcare service. The element is bound to `FijiOrganizationRoleVS` with a preferred binding. |\n| `name` | 1..1 | `string` | The name used to identify the organization. This is a mandatory element and must be supported by implementations. |\n| `telecom` | 0..* | `ContactPoint` | Contact details for the organization, such as telephone numbers, email addresses, or other supported communication channels. |\n| `address` | 0..* | `FijiAddress` | One or more addresses associated with the organization. Addresses must conform to the `FijiAddress` profile, enabling the use of Fiji-specific address structures. |\n| `partOf` | 0..1 | `Reference(FijiOrganization)` | Identifies the parent organization of which this organization forms a part. This supports the representation of organizational hierarchies and administrative relationships. |\n\n## Implementation Guidance\n\n- **National organization identifier:** Every organization record must contain exactly one identifier in the `nationalOrganizationId` slice. The identifier system is fixed to `https://fhir.health.gov.fj/identifier/organization`, and the identifier value must be populated with the organization's national identifier.\n- **Additional identifiers:** Implementations may provide additional identifiers using other identifier systems. These must not replace the required national organization identifier.\n- **Organization classification:** The `type` element should be used to classify the organization's role using codes from `FijiOrganizationRoleVS`. The preferred binding encourages use of the specified terminology while allowing other codes where appropriate.\n- **Organization naming:** The `name` element is mandatory and must contain the organization's name.\n- **Contact information:** The `telecom` element can carry multiple contact points, including telephone numbers and email addresses.\n- **Fiji-specific addresses:** All organization addresses must conform to `FijiAddress`, supporting consistent representation of address information in the Fiji context.\n- **Organizational hierarchy:** The `partOf` element can reference another `FijiOrganization` instance to represent parent–child relationships. For example, a health centre may be part of a divisional or national health service organization.\n\n## Conformance Notes\n\nThe `FijiOrganization` profile constrains the base FHIR `Organization` resource to meet the requirements of the Fiji IG.\n\nThe `identifier` element has a minimum cardinality of `1..*`. The `nationalOrganizationId` slice has a cardinality of `1..1`, requiring exactly one identifier that uses the specified national identifier system. The slicing rules are open, so additional identifiers are permitted.\n\nElements marked **Must Support (MS)** indicate that conformant systems must support the element as defined by the implementation guide's conformance expectations. Must Support does not, by itself, require an element to be present in every resource instance.\n\nThe `name` element is required by its `1..1` cardinality. Other elements may be absent where permitted by their cardinalities.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-service-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-service-request"
      },
      "name" : "Fiji Healthcare Service Request",
      "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.\n\nA service request  is a record of a request for a procedure or diagnostic or other service to be planned, proposed, or performed,\nwith or on a patient. The request will lead to either a Procedure or DiagnosticReport, which in turn may reference associated \nresources/documentation such as observations, images, findings that are relevant to the treatment/management of the subject. \n\nThis resource may be used to share relevant information required to support a referral or a transfer of care request from one \npractitioner or organization to another when a patient is required to be referred to another provider for a consultation\n /second opinion and/or for short term or longer term management of one or more health issues or problems..",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-FijiOrganizationExample.html"
      }],
      "reference" : {
        "reference" : "Organization/FijiOrganizationExample"
      },
      "name" : "Fiji Hospital Example Fiji Divisional Hospital",
      "description" : "Example Fiji hospital organization in Fiji.\nIncludes organizational identifier, contact information, and address.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-humanname.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-humanname"
      },
      "name" : "Fiji HumanName",
      "description" : "A HumanName profile designed for representing Fiji names.\n\nNaming conventions are diverse and may not align with Western norms. This profile accommodates a range of naming practices including:\n\n- Absence of family names (e.g., in some cultures where individuals may have only given names)\n- Patronymic or Matronymic structures\n- Multiple given names\n- Customary and ceremonial naming\n- Distinction between 'usual' (social) and 'official' (legal) names\n\nAt least one FijiHumanName instance must exist on FijiPatient and FijiPractitioner resources.\nSystems SHALL NOT require both usual and official names.\n\nNote: Clan affiliation is recorded separately from the FijiHumanName.  It issupported as an optional extension of  FijiPatient and FijiPractitioner resources to capture important cultural identity information.\n\n**STATUS**: Proposed for wider Pacific use - needs further review and consensus from Pacific stakeholders before finalization.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-imaging-diagnostic-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-imaging-diagnostic-report"
      },
      "name" : "Fiji Imaging Diagnostic Report",
      "description" : "### Fiji Imaging Diagnostic Report\n\nThe **Fiji Imaging Diagnostic Report** profile represents a diagnostic report for imaging examinations performed within Fiji health information systems. It is based on the FHIR `DiagnosticReport` resource and provides additional constraints to support interoperability between radiology information systems (RIS), imaging systems, and other health information systems.\n\nThe profile requires each report to have a **RIS Accession Number**, which provides a unique identifier for the imaging examination within the radiology workflow. The report may also reference one or more `ServiceRequest` resources through `basedOn`, allowing the report to be linked to the request or referral that initiated the examination.\n\nThe `category` element supports both **HL7 diagnostic service classification** and **DICOM modality classification**. These are represented as separate slices so that an implementation can provide either or both classifications. This allows the profile to accommodate systems that use HL7 terminology, DICOM terminology, or both.\n\nThe `code` element identifies the type of imaging diagnostic report and is bound to the Fiji radiology findings value set. The patient, encounter, report timing, performers, interpreters, and report presentation are also constrained to support consistent exchange of imaging results.\n\n### Key Elements\n\n| Element | Cardinality | Description |\n|---|---:|---|\n| `identifier` | 1..* | Identifiers for the diagnostic report. The identifier list must contain one RIS Accession Number. |\n| `identifier[risAccession]` | 1..1 | The RIS Accession Number assigned to the imaging examination. |\n| `identifier[risAccession].system` | 1..1 | Fixed to the Fiji RIS Accession Number NamingSystem. |\n| `identifier[risAccession].value` | 1..1 | The accession number assigned by the radiology information system. |\n| `basedOn` | 0..* | References the service request(s) that resulted in the imaging examination. References are restricted to `FijiServiceRequest`. |\n| `status` | 1..1 | The current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |\n| `category` | 1..* | Classification of the diagnostic service and/or imaging modality associated with the report. |\n| `category[hl7DiagnosticService]` | 0..1 | HL7 diagnostic service classification. Uses the HL7 diagnostic service value set. |\n| `category[dicomModality]` | 0..1 | DICOM modality classification. Uses the Fiji DICOM Modality value set. |\n| `code` | 1..1 | Code identifying the type of imaging diagnostic report or examination. Bound to `FijiRadiologyFindingsVS` with a preferred binding. |\n| `subject` | 1..1 | The patient to whom the report relates. Restricted to `FijiPatient`. |\n| `encounter` | 0..1 | The healthcare encounter associated with the imaging examination. Restricted to `FijiEncounter`. |\n| `effective[x]` | 1..1 | The clinically relevant time or period of the imaging examination. |\n| `issued` | 1..1 | The date and time at which the diagnostic report was issued. |\n| `performer` | 0..* | The organisation, practitioner, or practitioner role responsible for performing the imaging examination or producing the report. |\n| `resultsInterpreter` | 0..* | The practitioner, practitioner role, or organisation responsible for interpreting the imaging results. |\n| `presentedForm` | 1..* | The report as a human-readable or otherwise presentable document, such as a PDF. |\n| `presentedForm.contentType` | 1..1 | MIME type of the presented report, such as `application/pdf`. |\n| `presentedForm.data` | 1..1 | The report content encoded as base64 data. |\n| `presentedForm.language` | 0..1 | Language of the presented report, using the FHIR language value set. |\n\n### Imaging Modality and Diagnostic Service\n\nThe `category` element uses open slicing to allow both HL7 and DICOM classifications to be represented independently:\n\n- **HL7 Diagnostic Service** identifies the type of diagnostic service that produced the report.\n- **DICOM Modality** identifies the imaging modality used to acquire the examination, such as CT, MR, CR, or ultrasound.\n\nBoth slices are optional individually, but at least one `category` element is required. Implementations are encouraged to provide both classifications where they are available.\n\nThis approach avoids combining multiple modality codes into a single code or comma-separated value and allows multiple classifications to be represented using standard FHIR coding structures.\n\n### Report Presentation\n\nAt least one `presentedForm` is required so that the diagnostic report can be exchanged in a human-readable or otherwise renderable form. The content type and encoded data are required. Where appropriate, implementations may provide the final report as a PDF document using `application/pdf`.\n\nThe `language` element may be populated to identify the language used in the presented report.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-immunization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-immunization"
      },
      "name" : "Fiji Immunization",
      "description" : "# Profile of Immunizations for Fiji Patient\n\nThis profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history \nassociated with a patient. \n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (completed, entered-in-error, not-done)\n* vaccineCode - a vaccine code from the Immunization ValueSet\nThis element should be coded with terminology from the defined valueset. If no appropriate value is available\nthen a coded value from another terminology may be used. Free text entry should only be permitted if no \ncoded value is available or to record historic immunizations.\n* patient - a reference to a  Fiji Patient\n* occurrence[x] -  the vaccine administration date can be recorded using one of the two options below\n  * occurenceDateTime  (recommended for use where possible)\n  * occurrenceString - this is a free text representation of the date or administration\n\n### Other elements defined\n* statusReason -  provides reason for administration of vaccine - mandatory if vaccine not administered (currently uses ICD11 valueset from DAK, suggest converting to SNOMED CT)\n* lotNumber - is not mandatory but should be recorded if known\n* encounter - a reference to an encounter where/when the immunization took place\n* location only Reference(FijiLocation)\n* site - to body location where the vaccine was administered (use FijiBodySiteVS valueset,r extend if required)\n* route - How vaccine entered body uses SNOMED codes where concept descendent-of #284009009\n* protocolApplied.doseNumber - should be recorded if multiple doses are required\n* protocolApplied.seriesDoses - should be recorded where multiple doses are recommended for full immunity\n* performer.actor - who administered the vaccine can be Fiji Practitioner, PractitionerRole or Organization\n* note - Extra information about the immunization that is not conveyed by the other attributes\n* reaction - Details of an adverse reaction that follows immunization \n  * reaction.date - mandatory if a reaction is recorded.  The date/time the adverse reaction started.\n  * reaction.detail  - mandatory if a reaction is recorded. This is a reference to an Observation that describes the adverse reaction.\n\n### Terminology  \n\nImmunization.vaccineCode.coding shall be populated by one of the codes from the Immunization ValueSet where such a code exists\nfor the vaccine.  Additional codes may be used where no matching code is present.\n\n### Alignment with Regional IGs  \n\nThe following specifications have been reviewed in development of this profile. \n-\tAustralian Clinical Data for Interoperability Release 2\n-\tNew Zealand Clinical Data for Interoperability 2026\n-\tAustralian AU Core Implementation Guide 2.0.0\n-\tWHO DAK Administer Vaccine Immunization Elements",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-iTaukei-affiliation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-iTaukei-affiliation"
      },
      "name" : "Fiji iTaukei Affiliation",
      "description" : "Represents Fiji iTaukei affiliation.\nThis is a demographic identity attribute.\nIt is not a syntactic component of a name.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-korodina.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-korodina"
      },
      "name" : "Fiji Korodina",
      "description" : "A code system representing korodina (wards) in Fiji\nfor use in healthcare information exchange.\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-address-village.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-address-village"
      },
      "name" : "Fiji KoroDina or Village",
      "description" : "Village or KoroDina part of FijiAddress.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-korodina-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-korodina-vs"
      },
      "name" : "Fiji Korodina ValueSet",
      "description" : "The set of korodina codes recognised by the\nFiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-laboratory-diagnostic-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-laboratory-diagnostic-report"
      },
      "name" : "Fiji Laboratory Diagnostic Report",
      "description" : "## Fiji Pathology DiagnosticReport\n\nThe **Fiji Pathology DiagnosticReport** profile defines the representation of a pathology diagnostic report in the Fiji FHIR Implementation Guide. It is based on the FHIR `DiagnosticReport` resource and is intended to provide a structured representation of pathology investigations and their results.\n\nA pathology diagnostic report provides a summary of the investigation performed, identifies the patient and relevant specimens, records the clinicians or organisations responsible for the report, and links to the individual pathology observations that comprise the report.\n\nThe profile requires a report identifier, a pathology service category, a coded description of the investigation, the patient, the clinically relevant date/time, and at least one pathology result. Where applicable, the report can also reference the `ServiceRequest` that initiated the investigation and the `Specimen` used for testing.\n\n### Key Elements\n\n| Element | Cardinality | Description |\n|---|---:|---|\n| `identifier` | **1..*** | Business identifier(s) for the diagnostic report. At least one identifier is required to allow the report to be uniquely identified within the relevant pathology system. |\n| `basedOn` | 0..* | References the `ServiceRequest` that initiated or authorised the pathology investigation. References are constrained to `FijiServiceRequest`. |\n| `status` | **1..1** | Indicates the current status of the diagnostic report, such as preliminary, final, amended, or cancelled. |\n| `category` | **1..1** | Identifies the type of diagnostic service. This profile fixes the category to the laboratory value `LAB` from the diagnostic service category code system. |\n| `code` | **1..1** | Coded description of the pathology investigation or diagnostic service being reported. The code is bound to `ObsVS` with a preferred binding. |\n| `subject` | **1..1** | Identifies the patient who is the subject of the pathology investigation. References are constrained to `FijiPatient`. |\n| `effective[x]` | **1..1** | Records the clinically relevant date/time or period for the pathology investigation, such as the time the specimen was collected or the investigation was performed. |\n| `issued` | **1..1** | Date and time at which the diagnostic report was issued and made available. |\n| `performer` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for performing the pathology investigation. References are constrained to `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization`. |\n| `resultsInterpreter` | 0..* | Identifies the practitioner, practitioner role, or organisation responsible for interpreting or reviewing the pathology results. References are constrained to `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization`. |\n| `specimen` | 0..* | Identifies the specimen(s) on which the pathology investigation was performed. References are constrained to `FijiSpecimen`. |\n| `result` | **1..*** | References the individual pathology observations that make up the diagnostic report. References are constrained to `FijiPathologyObservation`. At least one result is required. |\n| `presentedForm` | **1..*** | Provides the complete report in an electronically presentable format, such as a PDF document. At least one presented form is required. |\n| `presentedForm.contentType` | **1..1** | Specifies the MIME type of the presented report, such as `application/pdf`. |\n| `presentedForm.data` | **1..1** | Contains the report content encoded as `base64Binary`. |\n| `presentedForm.language` | 0..1 | Identifies the language in which the presented report is written. The value is bound to the `$lang-vs` language ValueSet. |\n\n### Relationships to Other Resources\n\nThe profile establishes the following important relationships:\n\n- **ServiceRequest** — `basedOn` links the diagnostic report to the request that initiated the pathology investigation.\n- **Patient** — `subject` identifies the patient for whom the report was produced.\n- **Specimen** — `specimen` identifies the biological specimen(s) examined.\n- **Pathology Observation** — `result` links the report to the individual pathology results and measurements.\n- **Practitioner / PractitionerRole / Organization** — `performer` identifies the party responsible for performing the investigation, while `resultsInterpreter` identifies the party responsible for interpreting or reviewing the results.\n\n### Report Presentation\n\nThe `presentedForm` element is mandatory and is intended to support exchange of the complete human-readable pathology report in addition to the structured FHIR representation. The profile requires the content type and report data to be present. The language may also be specified using the language ValueSet defined for the Fiji Implementation Guide.\n\nThe structured `result` references should be used for individual pathology findings and values, while `presentedForm` provides the complete report as a document for presentation or archival purposes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-mataqali.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-mataqali"
      },
      "name" : "Fiji Mataqali",
      "description" : "A code system representing mataqali recognised in Fiji,\nfor use in healthcare information exchange where\nidentification of a mataqali is required.\n\nCodes and display names must be sourced from an\nauthoritative dataset approved for the intended use.\nAccess, disclosure and use of customary information\nmust respect applicable Fiji laws and governance.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-mataqali-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-mataqali-vs"
      },
      "name" : "Fiji Mataqali ValueSet",
      "description" : "Mataqali codes recognised by the Fiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-medication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-medication"
      },
      "name" : "Fiji Medication",
      "description" : "This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.  \nThe Medication resource allows for medications to be characterized by the form of the drug and the ingredient (or ingredients), \nas well as how it is packaged. The medication will include the ingredient(s) and their strength(s) and the package can include \nthe amount (for example, number of tablets, volume, etc.) that is contained in a particular container \n(for example, 100 capsules of Amoxicillin 500mg per bottle).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-medication-route-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-medication-route-vs"
      },
      "name" : "Fiji Medication and Vaccine Route Value Set",
      "description" : "Valueset for medication and vaccine route.\nUsed for Medications and Immunization.route\nValues are descendants from SNOMED CT Route of Administration concept.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-medication-dispense.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-medication-dispense"
      },
      "name" : "Fiji Medication Dispense",
      "description" : "# Fiji Medication Dispense\n\n## Profile Description\n\nThe Fiji Medication Dispense profile defines the minimum expectations for recording medication dispensing events in Fiji healthcare settings. It is based on the FHIR R4 `MedicationDispense` resource and supports the exchange of information about medications supplied to patients, including the dispensing status, medication details, authorizing prescription, dispensing practitioner or organization, quantity supplied, and date of handover.\n\nThe profile introduces a mandatory mSupply dispense identifier to support consistent identification and traceability of dispensing records across systems. It also constrains references to Fiji-specific profiles to improve interoperability between Fiji healthcare information systems.\n\n## Scope and Usage\n\nThis profile is intended for recording medication dispensing events, including the supply of medications in response to an authorized prescription. It supports:\n\n- Identifying each dispense record using one or more identifiers, including a mandatory mSupply dispense identifier.\n- Recording the status of the dispensing event.\n- Identifying the medication supplied using a coded concept or a reference to a Fiji Medication resource.\n- Identifying the patient receiving the medication.\n- Linking the dispense to one or more authorizing medication requests.\n- Identifying the practitioner, practitioner role, or organization responsible for dispensing.\n- Recording the quantity supplied and the date the medication was handed over.\n- Optionally associating the dispense with an encounter, dispensing location, preparation date, days supply, and dosage instructions.\n\n## Key Elements\n\nThe following table describes the important, mandatory, and Must Support elements defined by this profile.\n\n| Element | Cardinality | Requirements and usage |\n|---|---|---|\n| `identifier` | 1..* Must Support | Identifies the medication dispense record. At least one identifier is required. The identifiers are sliced by `system`, allowing identifiers from different assigning systems. |\n| `identifier.use` | Base cardinality; Must Support | Indicates the purpose of an identifier, such as usual, official, or secondary. Implementations should populate this when the identifier's use is known. |\n| `identifier.system` | 1..1 Must Support | Identifies the namespace that assigns the identifier. Every identifier must have a system URI. |\n| `identifier.value` | 1..1 Must Support | Contains the identifier value assigned by the relevant system. Every identifier must have a value. |\n| `identifier[mSupplyDispenseId]` | 1..1 Must Support | The mandatory identifier slice for the mSupply dispensing system. Every dispense record must contain exactly one identifier using the required system URI. |\n| `identifier[mSupplyDispenseId].system` | 1..1 | Must equal `http://fhir.health.gov.fj/identifier/msupply-dispense`. This fixed URI identifies the mSupply dispense identifier namespace. |\n| `identifier[mSupplyDispenseId].value` | 1..1 | Contains the unique dispense identifier assigned by mSupply. The value must be present for every dispense record. |\n| `status` | 1..1 Must Support | Records the current status of the dispensing event, such as preparation, completion, cancellation, or entry in error. The value must conform to the FHIR `MedicationDispense.status` value set. |\n| `medication[x]` | 1..1 Must Support | Identifies the medication supplied. Exactly one representation must be provided: `medicationCodeableConcept` or `medicationReference`. |\n| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. It is bound to `FijiMedVS` with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. |\n| `medicationReference` | Choice option; Must Support | References a `FijiMedication` resource containing details of the medication supplied. This is an alternative to the coded concept representation. |\n| `subject` | 1..1 Must Support | Identifies the patient who received the medication. The reference must target `FijiPatient`. |\n| `context` | Base cardinality; Must Support | Optionally links the dispense to the healthcare encounter associated with the dispensing event. When present, the reference must target `FijiEncounter`. In FHIR R4, this element is named `context`. |\n| `performer` | 1..* Must Support | Identifies the individual or organization involved in dispensing the medication. At least one performer is required. |\n| `performer.actor` | 1..1 Must Support | Identifies the practitioner, practitioner role, or organization responsible for the dispensing activity. This element is mandatory within each performer entry. |\n| `authorizingPrescription` | 1..* Must Support | References the medication request or requests authorizing the dispensing event. At least one reference is required, and each reference must target `FijiMedicationRequest`. |\n| `quantity` | 1..1 Must Support | Records the amount of medication supplied. This is mandatory and should include an appropriate numerical value and unit. |\n| `daysSupply` | Base cardinality; Must Support | Records the period of supply provided by the dispense, when known. It may be used to indicate the number of days for which the supplied medication is expected to last. |\n| `whenHandedOver` | 1..1 Must Support | Records the date and time when the medication was handed to the patient or their representative. This element is mandatory. |\n| `whenPrepared` | Base cardinality; Must Support | Records the date and time when the medication was prepared for dispensing, where applicable. |\n| `location` | Base cardinality; target constrained | Optionally identifies the physical location where the medication was supplied or dispensed. When present, the reference must target `FijiLocation`. |\n| `dosageInstruction` | Base cardinality; Must Support | Provides dosage instructions associated with the dispensed medication. This can include structured dosage information and directions for use. |\n| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions, suitable for display to patients and healthcare professionals. It is not mandatory under this profile. |\n\n**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their cardinalities are inherited from FHIR R4 `MedicationDispense`.\n\n## Identifier Requirements\n\nEvery `FijiMedicationDispense` resource must contain at least one identifier. The profile requires a specific identifier slice for the mSupply dispensing system.\n\n| Property | Requirement |\n|---|---|\n| Identifier system | `http://fhir.health.gov.fj/identifier/msupply-dispense` |\n| Identifier value | Mandatory; contains the mSupply dispense identifier |\n| Identifier slice | `mSupplyDispenseId` |\n| Slice cardinality | Exactly one identifier |\n| Slicing discriminator | `system`, using value-based slicing |\n| Slicing rules | Open; additional identifiers using other systems are permitted |\n\nThe open slicing rule allows additional identifiers to be recorded alongside the mandatory mSupply identifier. This supports interoperability with other dispensing systems, local identifiers, and external workflows without compromising the requirement for mSupply traceability.\n\n## Medication Identification\n\nThe `medication[x]` element is mandatory and supports two alternative representations:\n\n1. **Coded medication:** Use `medicationCodeableConcept` to identify the supplied medication directly using a coded concept. The `FijiMedVS` ValueSet provides the preferred terminology.\n2. **Medication resource reference:** Use `medicationReference` to reference a `FijiMedication` resource containing the medication details.\n\nExactly one of these alternatives must be populated. The preferred ValueSet binding encourages consistent medication coding while allowing other appropriate codes when necessary.\n\n## Prescription and Dispensing Performer\n\nThe `authorizingPrescription` element links the dispensing event to the medication request that authorized it. The profile requires at least one reference, and each reference must target a `FijiMedicationRequest` resource.\n\nThe `performer` element identifies those responsible for dispensing the medication. At least one performer must be recorded, and each performer entry must contain an `actor`. The permitted reference targets are:\n\n- `FijiPractitioner`\n- `FijiPractitionerRole`\n- `FijiOrganization`\n\nThis supports representation of an individual dispensing practitioner, a practitioner acting in a defined role, or an organization responsible for the dispensing activity.\n\n## Quantity and Handover\n\nThe `quantity` element is mandatory and records the amount of medication supplied. Implementations should use appropriate units and represent the quantity consistently with the medication's pharmaceutical form.\n\nThe `whenHandedOver` element is mandatory and records when the medication was handed to the patient or their representative. It is distinct from `whenPrepared`, which records the preparation date and time where that information is available.\n\nThe optional `daysSupply` element can be used to indicate the expected duration of the dispensed supply.\n\n## Dosage Instructions\n\nThe profile marks both `dosageInstruction` and `dosageInstruction.text` as Must Support. The text element provides a human-readable description of the directions for using the dispensed medication.\n\nWhere a dispense fulfils a prescription, the dosage instructions should be consistent with the associated `FijiMedicationRequest`, unless a clinically authorized change has occurred. The dispense may record the instructions supplied to the patient, which can help preserve the directions associated with the actual supply.\n\nNeither `dosageInstruction` nor `dosageInstruction.text` is made mandatory by the profile.\n\n## Referenced Fiji Profiles\n\n| Profile | Purpose |\n|---|---|\n| `FijiPatient` | Identifies the patient receiving the medication. |\n| `FijiEncounter` | Identifies the healthcare encounter associated with the dispensing event. |\n| `FijiPractitioner` | Identifies an individual practitioner involved in dispensing. |\n| `FijiPractitionerRole` | Identifies a practitioner's role in a healthcare organization or service. |\n| `FijiOrganization` | Identifies an organization responsible for dispensing. |\n| `FijiLocation` | Identifies the physical location associated with dispensing. |\n| `FijiMedication` | Represents the medication supplied. |\n| `FijiMedicationRequest` | Represents the medication request authorizing the dispense. |\n\n## Must Support Interpretation\n\nElements marked Must Support indicate that implementations claiming conformance to this profile are expected to support those elements according to the implementation guide's conformance requirements.\n\nMust Support does not, by itself, make an element mandatory or require it to be populated in every resource instance. Mandatory presence is determined by cardinality, such as `1..1` or `1..*`.\n\nFor this profile, mandatory elements include the identifier and mSupply identifier slice, `status`, `medication[x]`, `subject`, `performer`, `performer.actor`, `authorizingPrescription`, `quantity`, and `whenHandedOver`. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.\n\n## Alignment with Regional IGs\n\nThe following specifications have been reviewed in the development of this profile:\n\n- **Australian AU Base Implementation Guide 6.0.0** — reviewed as a regional reference for FHIR conformance expectations, resource representation, and interoperability practices.\n- **JPC Medication Dispense profile** - reviewed for conformance with current practice and legacy data handling\nThe Fiji Medication Dispense profile builds on the FHIR R4 `MedicationDispense` resource while introducing a mandatory mSupply dispense identifier, Fiji-specific reference constraints, and a preferred medication terminology binding. These adaptations support local medication dispensing workflows and traceability requirements while maintaining alignment with regional FHIR implementation practices.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-medication-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-medication-request"
      },
      "name" : "Fiji Medication Request",
      "description" : "# Fiji Medication Request\n\n## Profile Description\n\nThe Fiji Medication Request profile defines minimum expectations for recording, searching, and retrieving medication requests associated with a patient in Fiji healthcare settings. It is based on the FHIR R4 `MedicationRequest` resource and supports the representation of prescriptions, medication orders, and associated clinical information.\n\nThe profile references Fiji-specific patient, encounter, practitioner, practitioner role, organization, medication, condition, and observation profiles to promote consistent representation and interoperability across Fiji healthcare systems.\n\nA medication request records the details of a medication that is requested or prescribed for a patient, including the medication, the status and intent of the request, the requester, the date the request was authored, and any associated clinical reasons and dosage instructions.\n\n## Scope and Usage\n\nThis profile is intended for use when recording medication requests in Fiji healthcare information systems. It supports:\n\n- Recording the status and intent of a medication request.\n- Identifying the medication using a coded concept or a reference to a Fiji Medication resource.\n- Linking the request to the patient and, where applicable, the encounter.\n- Identifying the practitioner, practitioner role, or organization responsible for the request.\n- Recording clinical reasons for the medication request using codes or references to relevant clinical resources.\n- Supporting dosage instructions, including a human-readable description of how the medication should be taken or administered.\n\nThe profile establishes minimum conformance expectations for the key elements required to exchange medication request information. Implementers may populate additional elements permitted by the base FHIR resource where required by local workflows.\n\n## Key Elements\n\nThe following table describes the important, mandatory, and Must Support elements defined by this profile.\n\n| Element | Cardinality | Requirements and usage |\n|---|---|---|\n| `status` | 1..1 Must Support | The current state of the medication request, such as active, completed, cancelled, or entered in error. This element is mandatory and must be supported by implementations. The value must conform to the FHIR `MedicationRequest.status` value set. |\n| `intent` | 1..1 Must Support | The intent of the request, such as order, proposal, or plan. This element is mandatory and must be supported by implementations. The value must conform to the FHIR `MedicationRequest.intent` value set. |\n| `medication[x]` | 1..1 Must Support | Identifies the medication being requested. Exactly one medication representation must be provided: either `medicationCodeableConcept` or `medicationReference`. Both representations are marked Must Support, allowing implementations to support coded medication identification and references to structured medication resources. |\n| `medicationCodeableConcept` | Choice option; Must Support | Identifies the medication directly using a coded concept. The element is bound to the `FijiMedVS` ValueSet with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. The preferred binding does not prohibit other codes when necessary. |\n| `medicationReference` | Choice option; Must Support | References a `FijiMedication` resource that describes the medication being requested. The reference must target the Fiji Medication profile. This option is an alternative to `medicationCodeableConcept`; both must not be populated simultaneously. |\n| `subject` | Base cardinality; Must Support not explicitly declared | Identifies the patient for whom the medication is requested. When present, the reference must target `FijiPatient`. The base FHIR cardinality is retained, so this element is not made mandatory by this profile. |\n| `encounter` | Base cardinality; Must Support not explicitly declared | Links the medication request to the healthcare encounter during which it was initiated or is being managed. When present, the reference must target `FijiEncounter`. The element remains optional. |\n| `authoredOn` | 1..1 Must Support | Records the date and time when the medication request was initially authored. This is mandatory and supports the chronological interpretation of the prescription or order. |\n| `requester` | 1..1 Must Support | Identifies the individual or organization responsible for the medication request. This element is mandatory. The reference must target a `FijiPractitioner`, `FijiPractitionerRole`, or `FijiOrganization` resource. |\n| `reasonCode` | Base cardinality; Must Support | Records the clinical reason for the medication request using one or more coded concepts. The element is bound to `FijiMedicationRequestReasonVS` with **preferred** binding strength. Implementations should use codes from this ValueSet where appropriate. |\n| `reasonReference` | Base cardinality; Must Support | References clinical information supporting the reason for the medication request. Permitted targets are `FijiCondition`, `FijiPathologyObservation`, and `FijiDiagnosticObservation`. This enables the request to be linked to a recorded condition or relevant clinical finding. |\n| `dosageInstruction` | Base cardinality; Must Support | Provides instructions describing how the medication is to be used or administered. This element may contain structured dosage information, timing, route, dose, and other details supported by the base FHIR resource. |\n| `dosageInstruction.text` | Base cardinality; Must Support | Provides a human-readable description of the dosage instructions. This is useful for clinical review and for displaying instructions to patients and healthcare professionals. It is not mandatory under this profile. |\n\n**Cardinality note:** Elements described as retaining their base cardinality are not made mandatory by this profile. Their actual cardinality is inherited from FHIR R4 `MedicationRequest`.\n\n## Medication Identification\n\nThe `medication[x]` element is mandatory and supports two alternative representations:\n\n1. **Coded medication:** Use `medicationCodeableConcept` to identify the medication directly by a code and, where appropriate, display text. The `FijiMedVS` ValueSet provides the preferred terminology for medication identification.\n2. **Medication resource reference:** Use `medicationReference` to reference a `FijiMedication` resource containing the medication details.\n\nExactly one of these alternatives must be populated. The choice allows systems to exchange medication requests using either a directly coded medication or a separately maintained medication resource.\n\nThe preferred binding to `FijiMedVS` encourages consistent medication coding across Fiji implementations while allowing alternative codes where necessary.\n\n## Clinical Reason and Dosage Instructions\n\nThe profile supports the recording of clinical reasons for a medication request through `reasonCode` and `reasonReference`.\n\n- `reasonCode` supports direct coding of the clinical reason using the preferred `FijiMedicationRequestReasonVS` ValueSet.\n- `reasonReference` supports links to a condition or clinical observation that provides evidence or context for the request.\n\nBoth elements are optional and marked Must Support. Implementations should support both coded and reference-based representations as appropriate to their workflows.\n\nThe `dosageInstruction` element supports instructions for medication use. Its `text` sub-element provides a human-readable representation that can be displayed in clinical applications and used to communicate medication directions. Both elements are marked Must Support but are not made mandatory by this profile.\n\n## Referenced Fiji Profiles\n\nWhere the profile restricts references to Fiji-specific resources, the target resources are:\n\n| Resource profile | Purpose |\n|---|---|\n| `FijiPatient` | Identifies the patient receiving the medication. |\n| `FijiEncounter` | Identifies the healthcare encounter associated with the medication request. |\n| `FijiPractitioner` | Identifies an individual healthcare practitioner responsible for the request. |\n| `FijiPractitionerRole` | Identifies a practitioner's role within a healthcare organization or service. |\n| `FijiOrganization` | Identifies an organization responsible for the medication request. |\n| `FijiMedication` | Represents the medication being requested. |\n| `FijiCondition` | Represents a condition that may explain or support the medication request. |\n| `FijiPathologyObservation` | Represents a pathology-related observation that may support the clinical reason. |\n| `FijiDiagnosticObservation` | Represents a diagnostic observation that may support the clinical reason. |\n\n## Must Support Interpretation\n\nElements marked Must Support indicate that implementations claiming conformance to this profile are expected to support the element according to the implementation guide's conformance requirements.\n\nMust Support does not, by itself, make an element mandatory or require that it be present in every resource instance. Mandatory presence is determined by cardinality, such as `1..1`.\n\nFor this profile, `status`, `intent`, `medication[x]`, `authoredOn`, and `requester` are mandatory and Must Support. Other Must Support elements remain optional unless their cardinality is constrained elsewhere.\n\n## Alignment with Regional IGs\n\nThe following specifications have been reviewed in the development of this profile:\n\n- **Australian AU Core Implementation Guide 2.0.0** — reviewed as a regional reference for medication request representation, FHIR conformance expectations, and interoperability practices.\n\nThe Fiji Medication Request profile builds on the FHIR R4 `MedicationRequest` resource while introducing Fiji-specific reference constraints and preferred terminology bindings. These adaptations support local healthcare requirements while maintaining alignment with regional FHIR implementation practices.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-FijiMedicationRequestExample.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/FijiMedicationRequestExample"
      },
      "name" : "Fiji Medication Request Example",
      "description" : "Example prescription for amoxicillin for a Fiji patient.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-medication-request"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-med-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-med-vs"
      },
      "name" : "Fiji Medication ValueSet",
      "description" : "Fiji Medication valueset based on until Fiji-Pacific valueset is developed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-FijiMedicationDispenseIdentifier.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/FijiMedicationDispenseIdentifier"
      },
      "name" : "Fiji MSupply Medication Dispense Identifier",
      "description" : "NamingSystem for Medication Dispense  identifiers in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-FijiNationalPatientIdentifier.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/FijiNationalPatientIdentifier"
      },
      "name" : "Fiji National Patient Identifier",
      "description" : "NamingSystem for national patient identifiers in Fiji. Note: legacy data may use a different naming system: http://health.gov.fj/FHIR/national-health-number.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-obs-interpretation-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-obs-interpretation-vs"
      },
      "name" : "Fiji Observation Interpretation Value Set",
      "description" : "Valueset for interpretations of Observations for Fiji.\nUsed for interpretaton element for Observations and derived profiles (eg. Vital signs)\nValues from  HL7 v3 Code System ObservationInterpretation with added values from WHO/Fiji usage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-FijiOrganizationIdentifier.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/FijiOrganizationIdentifier"
      },
      "name" : "Fiji Organization Identifier",
      "description" : "NamingSystem for organization identifiers in Fiji, using a simulated national identifier system for demonstration purposes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-pathology-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-pathology-observation"
      },
      "name" : "Fiji Pathology Observation",
      "description" : "## Scope\n\nThe **Fiji Pathology Observation** profile represents a laboratory or pathology result associated with a patient. It is based on the FHIR `Observation` resource and is intended to support the exchange of individual pathology results as well as groups of related results, such as lipid panels, full blood counts, and blood gas analyses.\n\nA pathology observation identifies the test performed, the patient, the timing of the observation, and the resulting value. It may also provide information about the specimen, performer, interpretation, reference range, and relationships to other pathology observations.\n\nThe profile supports two approaches for grouping related results:\n\n* **`hasMember`** — used to link a panel or other higher-level observation to independently represented member observations.\n* **`component`** — used when multiple values are intrinsically part of a single observation and are represented within the same resource.\n\n### Key Elements\n\n| Element                      | Cardinality | Must Support | Description                                                                                                                                                                                     |\n| ---------------------------- | ----------: | :----------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |\n| `status`                     |        1..1 |      Yes     | Indicates the status of the pathology result, such as preliminary, final, amended, or corrected.                                                                                                |\n| `category`                   |        1..* |      Yes     | Classifies the observation. For pathology results, the laboratory category should normally be used. Values are drawn from the observation category ValueSet.                                    |\n| `subject`                    |        1..1 |      Yes     | Identifies the patient to whom the pathology result relates. In this profile, the reference is restricted to `FijiPatient`.                                                                     |\n| `code`                       |        1..1 |      Yes     | Identifies the pathology test or observation being reported, such as haemoglobin, glucose, cholesterol, or arterial oxygen partial pressure. Values should preferably use the `ObsVS` ValueSet. |\n| `effective[x]`               |        1..1 |      Yes     | Records the clinically relevant time or period for the observation, such as the time a specimen was collected or the measurement was performed.                                                 |\n| `encounter`                  |        0..1 |      Yes     | Identifies the healthcare encounter associated with the observation.                                                                                                                            |\n| `performer`                  |        0..* |      Yes     | Identifies the person, practitioner, practitioner role, or organization responsible for the observation or result.                                                                              |\n| `value[x]`                   |        0..1 |      Yes     | Contains the actual pathology result, such as a quantity, coded concept, string, or other appropriate FHIR data type.                                                                           |\n| `dataAbsentReason`           |        0..1 |      Yes     | Provides a reason when an expected result value is not available.                                                                                                                               |\n| `interpretation`             |        0..* |      Yes     | Provides an interpretation of the result, such as high, low, normal, or abnormal.                                                                                                               |\n| `specimen`                   |        0..1 |      Yes     | Identifies the specimen from which the pathology result was obtained, such as serum, plasma, or arterial blood.                                                                                 |\n| `referenceRange`             |        0..* |      Yes     | Provides the reference range against which the result can be interpreted.                                                                                                                       |\n| `hasMember`                  |        0..* |      Yes     | Links the observation to other independently represented pathology observations. This is particularly useful for pathology panels. References are restricted to `FijiPathologyObservation`.     |\n| `component`                  |        0..* |      Yes     | Represents additional measurements that are part of the same observation.                                                                                                                       |\n| `component.code`             |        1..1 |      Yes     | Identifies the type of component observation. Values should preferably use the `ObsVS` ValueSet.                                                                                                |\n| `component.value[x]`         |        0..1 |      Yes     | Contains the value of the component observation.                                                                                                                                                |\n| `component.dataAbsentReason` |        0..1 |      Yes     | Provides a reason when a component result is not available.                                                                                                                                     |\n\n### Terminology\n\nThe following terminology bindings are defined by this profile:\n\n| Element            | ValueSet             | Binding Strength |\n| ------------------ | -------------------- | ---------------- |\n| `category`         | [ObservationCategoryCodes HL7](http://hl7.org/fhir/ValueSet/observation-category)      | Preferred        |\n| `code`             | [LOINC codes](http://loinc.org)         | Preferred        |\n| `dataAbsentReason` | [DataAbsentReason HL7](https://hl7.org/fhir/R4/valueset-data-absent-reason.html) | Extensible       |\n| `interpretation`   | [ObservationInterpretation HL7](https://hl7.org/fhir/R4/valueset-observation-interpretation.html)     | Extensible       |\n| `component.code`   | [LOINC codes](http://loinc.org)              | Preferred        |\n\nWhere an appropriate terminology exists, coded pathology observations should use internationally recognized terminology such as **LOINC** for laboratory tests and **SNOMED CT** where appropriate. Results expressed as quantities should use UCUM for units of measure.\n\n### Pathology Panels\n\nA pathology panel may be represented as a higher-level `FijiPathologyObservation` with `hasMember` references to the individual results.\n\nFor example, a lipid panel could be represented as:\n\n```text\nFijiPathologyObservation\n  code: Lipid panel\n  hasMember:\n    - Total cholesterol\n    - HDL cholesterol\n    - LDL cholesterol\n    - Triglycerides\n```\n\nEach member is itself a `FijiPathologyObservation` and can contain its own result, interpretation, reference range, and specimen.\n\nThis approach allows individual pathology results to be independently referenced and exchanged while retaining their relationship to the overall panel.\n\n### Components\n\n`component` should be used when multiple measurements form part of a **single observation** rather than being independently represented results.\n\nFor example, an observation representing a blood pressure measurement can contain systolic and diastolic blood pressure as components. In contrast, a laboratory panel such as a lipid panel is generally better represented using `hasMember`, with each analyte represented as a separate observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-patient"
      },
      "name" : "Fiji Patient",
      "description" : "# Fiji Patient\n\n## Overview\n\nThe `FijiPatient` profile defines the representation of a patient in Fiji healthcare information systems. It builds on the FHIR `Patient` resource and establishes requirements and guidance for recording patient identity, names, demographic information, administrative geography, cultural affiliation, and other relevant personal characteristics.\n\nThe profile supports consistent patient identification across healthcare settings through a mandatory national health number, while allowing additional identifiers such as national identification numbers and facility-specific medical record numbers.\n\nIt also supports Fiji-specific naming conventions through `FijiHumanName`, administrative zone information through `FijiAdminZone`, and iTaukei cultural and genealogical affiliation through `FijiITaukeiAffiliation`. Additional extensions support nationality, religious affiliation, occupation, and ethnicity.\n\nThe profile encourages the use of Fiji-specific resource profiles where available, while retaining compatibility with standard FHIR resources.\n\n## Scope and Usage\n\n`FijiPatient` is intended to represent a person receiving or having received healthcare services within the scope of the Fiji Implementation Guide.\n\nIt supports:\n\n- Identification of patients using a mandatory national health number and other applicable identifiers.\n- Recording of official and usual names, including culturally appropriate naming conventions.\n- Representation of health administration zones relevant to the patient's care.\n- Recording of iTaukei cultural and genealogical affiliations when applicable.\n- Recording of nationality, religious affiliation, occupation, and ethnicity where known and appropriate.\n- Recording of basic demographic information, including gender and date of birth.\n- Recording of patient addresses, languages, healthcare providers, and managing organizations.\n- Linking to other records concerning the same person, including related persons.\n\nOptional demographic and cultural information should be recorded only when available, relevant, and appropriate for the intended healthcare purpose.\n\n## Key Elements\n\n| Element | Cardinality | Description and implementation guidance |\n|---|---|---|\n| `identifier` | 1..* | Identifiers assigned to the patient. At least one identifier is required. Each identifier must have a `system` and `value`. Additional identifiers may include national identification numbers and medical record numbers. |\n| `identifier[nationalHealthNumber]` | 1..1 | Mandatory national health number. The identifier system must be `http://fhir.health.gov.fj/identifier/national-health-number`. The identifier value must be present. |\n| `name` | 1..* | Patient names represented using `FijiHumanName`. At least one name is required. Implementations should distinguish official names from usual or preferred names according to the naming conventions supported by the profile. |\n| `extension[adminZone]` | 0..1 | References `FijiAdminZone`, which supports coded administrative geography associated with the patient's care, including division, subdivision, medical area, nursing zone, and settlement. |\n| `extension[iTaukei]` | 0..1 | References `FijiITaukeiAffiliation`, which supports iTaukei cultural and genealogical affiliation, including yasana (province), tikina, korodine (village), yavusa, mataqali, and tokatoka (family). This extension is optional at the profile level and is relevant to patients for whom the information applies. |\n| `extension[nationality]` | 0..1 | Records the patient's nationality using the patient-nationality extension. The nationality code is drawn from the ISO country value set, with a required binding. The extension's `code` subextension carries the coded value. |\n| `extension[religion]` | 0..1 | Records the patient's religious affiliation using the patient-religion extension. The terminology binding is extensible and is based on the HL7 ReligiousAffiliation value set. |\n| `extension[occupation]` | 0..1 | Records the patient's occupation using `FijiPatientOccupation`. The extension is marked as Must Support. A definitive value set is yet to be specified. |\n| `extension[ethnicity]` | 0..1 | Records the patient's ethnicity using `FijiPatientEthnicity`. The extension is marked as Must Support. A definitive value set is yet to be specified. |\n| `gender` | 0..1 | Records the patient's administrative gender where known. Must Support. |\n| `birthDate` | 0..1 | Records the patient's date of birth where known. Must Support. The date may be identified as estimated using the `BirthDateEstimatedIndicator` extension. |\n| `address` | 0..* | Patient addresses represented using `FijiAddress`. Multiple addresses may be recorded where applicable. |\n| `generalPractitioner[practitioner]` | 0..* | References practitioners responsible for the patient's care. References may target `FijiPractitioner` or the standard `Practitioner` resource. Fiji-specific profiles are preferred where available. |\n| `generalPractitioner[role]` | 0..* | References practitioner roles responsible for the patient's care. References may target `FijiPractitionerRole` or the standard `PractitionerRole` resource. Fiji-specific profiles are preferred where available. |\n| `managingOrganization` | 0..1 | References the organization responsible for the patient. May target `FijiOrganization` or the standard `Organization` resource. Fiji-specific profiles are preferred where available. |\n| `communication` | 0..* | Records languages the patient can use for communication. |\n| `link.other` | 1..1 per link | References another record concerning the same person, using `FijiPatient` or `FijiRelatedPerson`. The cardinality of `link` itself is inherited from the base `Patient` resource. |\n\n## Fiji-Specific Extensions\n\n### Health Administration Zone\n\nThe `FijiAdminZone` extension represents the administrative geography relevant to the patient's healthcare. It supports coded values for:\n\n- Division\n- Subdivision\n- Medical area\n- Nursing zone\n- Settlement\n\nThese values can support patient registration, service catchment identification, care coordination, reporting, and health service planning.\n\nThe administration zone is distinct from the patient's cultural or genealogical affiliation. Implementations should use the appropriate extension for each purpose rather than treating administrative geography and traditional affiliation as interchangeable.\n\n### iTaukei Affiliation\n\nThe `FijiITaukeiAffiliation` extension represents culturally and genealogically relevant iTaukei affiliation. It supports coded values for:\n\n- Yasana (province)\n- Tikina\n- Korodine (village)\n- Yavusa\n- Mataqali\n- Tokatoka (family)\n\nThe extension provides a structured representation of affiliation rather than relying on free-text descriptions. The individual values should be populated when known and appropriate, without assuming that all levels of affiliation will be available for every patient.\n\nThe extension is optional in the `FijiPatient` profile. Its use should respect patient preferences, applicable governance requirements, and the intended purpose of collecting the information.\n\n### Nationality\n\nThe patient-nationality extension records the patient's nationality using a coded country value. The profile requires the extension's `code` subextension to use the ISO country value set.\n\nNationality should be distinguished from citizenship, place of birth, ethnicity, and current residence, as these concepts are not necessarily equivalent.\n\n### Religious Affiliation\n\nThe patient-religion extension records the patient's religious affiliation. Its terminology is based on the HL7 ReligiousAffiliation value set with an extensible binding.\n\nReligious affiliation is optional and should be recorded where appropriate to the care context and the patient's expressed information.\n\n### Occupation\n\nThe `FijiPatientOccupation` extension records the patient's occupation. The extension is optional but is designated Must Support.\n\nA definitive value set is yet to be specified. Implementations should follow the terminology guidance established by the Fiji Implementation Guide when available.\n\n### Ethnicity\n\nThe `FijiPatientEthnicity` extension records the patient's ethnicity. The extension is optional but is designated Must Support.\n\nA definitive value set is yet to be specified. Implementations should use the terminology guidance established by the Fiji Implementation Guide when available.\n\n## Naming Requirements\n\nAll patient names must conform to `FijiHumanName`. At least one name must be recorded.\n\nThe profile includes the following invariant:\n\n`pac-pat-1`: At least one name must have `use = usual` or `use = official`.\n\nThis invariant has warning severity. It encourages implementations to identify either a usual name for everyday use and display, or an official name for formal identification, without making either specific name-use category an unconditional validation requirement.\n\nWhere both names are available, implementations should preserve their distinct purposes. The usual name is generally appropriate for routine display, while the official name supports formal identification and medico-legal processes.\n\n## Patient Identification\n\nThe profile requires at least one patient identifier and mandates exactly one identifier slice for the national health number.\n\nThe national health number identifier must use the following system URI:\n\n`http://fhir.health.gov.fj/identifier/national-health-number`\n\nThe identifier's value is mandatory. Other identifiers may be recorded using their appropriate identifier systems, including national identification numbers and facility-specific medical record numbers.\n\nIdentifiers should be preserved with their assigning system so that values originating from different identifier namespaces are not incorrectly treated as equivalent.\n\n## Demographic Information\n\nThe profile supports the recording of gender and date of birth, with both elements marked Must Support.\n\nDate of birth may be uncertain or estimated. Where an estimated date of birth is recorded, the `BirthDateEstimatedIndicator` extension can indicate that the date is estimated rather than confirmed.\n\nAddresses must conform to `FijiAddress`, allowing address information to follow the Fiji-specific representation defined by the Implementation Guide.\n\nPatient languages are recorded through `communication`, supporting appropriate communication and continuity of care.\n\n## Care Providers and Organizational Responsibility\n\nThe `generalPractitioner` element supports references to practitioners and practitioner roles. The profile distinguishes these reference types through slicing:\n\n- `generalPractitioner[practitioner]` references a `FijiPractitioner` or standard `Practitioner`.\n- `generalPractitioner[role]` references a `FijiPractitionerRole` or standard `PractitionerRole`.\n\nThe `managingOrganization` element identifies the organization responsible for the patient and may reference a `FijiOrganization` or standard `Organization`.\n\nImplementations should prefer Fiji-specific profiles where available, while permitting standard FHIR resources for interoperability.\n\n## Must Support and Conformance Notes\n\nElements marked Must Support indicate that implementations are expected to support the element in accordance with the Implementation Guide's conformance expectations. Must Support does not, by itself, mean that the element must contain a value in every instance.\n\nThe following elements are explicitly marked Must Support in the supplied profile:\n\n- National health number identifier system and value\n- Gender\n- Date of birth\n- Estimated date-of-birth indicator extension\n- Occupation extension\n- Ethnicity extension\n\nThe profile also defines mandatory cardinalities for identifiers, identifier system and value, the national health number slice, and patient names. These cardinality requirements must be distinguished from Must Support expectations.\n\n## Implementation Considerations\n\n1. **Patient identity:** Ensure that the mandatory national health number is recorded using the prescribed identifier system URI.\n2. **Name handling:** Use `FijiHumanName` and distinguish official and usual names where the information is available.\n3. **Administrative geography:** Use `FijiAdminZone` for healthcare administration and service geography.\n4. **Cultural affiliation:** Use `FijiITaukeiAffiliation` for relevant iTaukei cultural and genealogical information, without substituting administrative geography for traditional affiliation.\n5. **Terminology:** Apply the required ISO country value set for nationality and the specified extensible terminology binding for religious affiliation.\n6. **Terminology development:** Complete the occupation and ethnicity value set definitions before imposing more specific terminology conformance requirements.\n7. **Data quality:** Represent estimated dates of birth explicitly and preserve identifier systems.\n8. **Interoperability:** Prefer Fiji-specific profiles for practitioners, practitioner roles, organizations, addresses, and related persons when available, while maintaining compatibility with standard FHIR resources.\n9. **Privacy and appropriate use:** Collect and disclose cultural, religious, and other personal information in accordance with applicable privacy, governance, and healthcare requirements.\n\n## Related Profiles and Extensions\n\n| Conformance artifact | Purpose |\n|---|---|\n| `FijiHumanName` | Fiji-specific patient name representation |\n| `FijiAddress` | Fiji-specific address representation |\n| `FijiAdminZone` | Healthcare administrative geography |\n| `FijiITaukeiAffiliation` | iTaukei cultural and genealogical affiliation |\n| Patient-nationality extension | Patient nationality using coded country values |\n| Patient-religion extension | Patient religious affiliation |\n| `FijiPatientOccupation` | Patient occupation |\n| `FijiPatientEthnicity` | Patient ethnicity |\n| `BirthDateEstimatedIndicator` | Indicates an estimated date of birth |\n| `FijiPractitioner` | Fiji-specific practitioner representation |\n| `FijiPractitionerRole` | Fiji-specific practitioner role representation |\n| `FijiOrganization` | Fiji-specific organization representation |\n| `FijiRelatedPerson` | Fiji-specific related-person representation |",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-FijiPatientExample.html"
      }],
      "reference" : {
        "reference" : "Patient/FijiPatientExample"
      },
      "name" : "Fiji Patient - iTaukei",
      "description" : "Example Fijian patient of iTaukei background demonstrating:\n- Simulated national health identifier\n- Official and usual names\n- iTaukei affiliation",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-patient-ethnicity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-patient-ethnicity"
      },
      "name" : "Fiji Patient Ethnicity",
      "description" : "Describes ethnicity of a Fiji Patient.  This is based on the structure of the NZ FHIR Base extension for \n[NZ Ethnicity](http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity)\nbut is separately defined so as to enable a national/regional valueset for ethnicity codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-patient-occupation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-patient-occupation"
      },
      "name" : "Fiji Patient Occupation",
      "description" : "Describes occupation of a Fiji Patient.  This is based on the structure of the NZ FHIR Base extension for \n[ACC Patient Occupation](http://hl7.org.nz/fhir/StructureDefinition/acc-patient-occupation)\nbut is separately defined so as to enable a national/regional valueset for occupation codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-FijiPatientFijiIndo.html"
      }],
      "reference" : {
        "reference" : "Patient/FijiPatientFijiIndo"
      },
      "name" : "Fiji Patient – Indo-Fijian",
      "description" : "Example Indo-Fijian patient demonstrating:\n- Simulated national health identifier\n- Official and usual names\n- No clan affiliation",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-practitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-practitioner"
      },
      "name" : "Fiji Practitioner",
      "description" : "# Fiji Practitioner\n\n## Overview\n\nThe **Fiji Practitioner** profile represents a healthcare practitioner involved in the delivery of healthcare services within Fiji. It supports culturally appropriate naming conventions while preserving the regulatory and medico-legal identity requirements necessary for clinical documentation, healthcare information exchange (HIE), and practitioner identification.\n\nThe profile uses the FHIR `Practitioner` resource and supports professional identifiers, registered and commonly used names, contact information, professional qualifications, and languages used by the practitioner. An optional iTaukei affiliation extension supports culturally appropriate representation of clan affiliation where applicable.\n\nAt least one professional identifier and exactly one official name are required. A usual name may be recorded when the practitioner is commonly known by a different name in clinical or community settings.\n\n## Key elements\n\n| Element | Cardinality | Constraints / requirements | Description |\n|---|---|---|---|\n| `identifier` | `1..*` | Must contain at least one identifier. | Professional registration, licensing, or other identifiers used to identify the practitioner. |\n| `identifier[medicalRegistrationNumber]` | `0..1` | Uses the system `https://fhir.health.gov.fj/identifier/practitioner-medical-registration`; when present, `system` and `value` are required. | Medical registration number issued by the relevant professional registration authority. |\n| `name` | `1..*` | Uses `FijiHumanName`; sliced by `use`. | Names associated with the practitioner, supporting Fiji-specific naming conventions. |\n| `name[official]` | `1..1` | `use = official`. | The practitioner's registered or licensed name, supporting reliable medico-legal identification. |\n| `name[usual]` | `0..1` | `use = usual`. | The name commonly used in clinical practice or community interactions, where different from the official name. |\n| `extension[iTaukei]` | `0..1` | Uses `FijiITaukeiAffiliation`. | Optional iTaukei affiliation information, where applicable and appropriate to record. |\n| `telecom` | `0..*` | Must contain valid contact details when populated. | Professional telephone numbers, email addresses, or other contact channels. |\n| `address` | `0..*` | Uses `FijiAddress`. | Practice or correspondence addresses. |\n| `gender` | `0..1` | Must use the FHIR administrative gender value set. | Administrative gender, where recorded. |\n| `qualification` | `0..*` | `qualification.code` is `1..1` for each qualification. | Professional qualifications, certifications, or credentials held by the practitioner. |\n| `communication` | `0..*` | No mandatory language has been specified by this profile. | Languages the practitioner can use to communicate with patients and other healthcare professionals. |\n\n## Implementation guidance\n\n- **Professional identity:** Implementations should use the medical registration identifier when one is available. The profile currently permits other identifiers and does not require the medical registration slice to be populated.\n- **Name handling:** The official name should reflect the practitioner's registered or licensed identity. The usual name supports respectful, culturally appropriate communication without replacing the official name.\n- **Cultural affiliation:** Record the iTaukei affiliation extension only where applicable and appropriate. It is optional and should not be used as a substitute for practitioner identity or professional registration.\n- **Qualifications:** Record each qualification separately, using an appropriate coded qualification where available. A Fiji-specific qualification value set may be introduced in a future version.\n- **Communication:** Record the languages the practitioner can use to support appropriate patient communication and care coordination. A minimum communication language is not currently required.\n- **Contact information:** Use `telecom` and `address` for professional contact details and practice or correspondence locations, subject to applicable privacy and data governance requirements.\n\n## Scope and future considerations\n\nThe following items are identified for future development and are not mandatory constraints in the current profile:\n\n- Require at least one medical or other professional registration identifier through a dedicated identifier slice.\n- Bind `qualification.code` to an appropriate Fiji-specific value set.\n- Require at least one practitioner communication language.\n- Consider a dedicated `displayName` extension if a consistent preferred-name display mechanism is needed across electronic health record systems and HIE services.\n\nThis profile is intended to provide a consistent representation of healthcare practitioners across Fiji's healthcare systems while supporting professional accountability, interoperability, and culturally appropriate care.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-FijiPractitionerExample.html"
      }],
      "reference" : {
        "reference" : "Practitioner/FijiPractitionerExample"
      },
      "name" : "Fiji Practitioner Example",
      "description" : "Example of a registered medical practitioner practising in Fiji.\nNote: The registration number and names are for illustrative purposes only and are not intended to represent a verified practitioner record.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-FijiPractitionerMedicalRegistrationNumber.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/FijiPractitionerMedicalRegistrationNumber"
      },
      "name" : "Fiji Practitioner Medical Registration Number",
      "description" : "NamingSystem for practitioner medical registration number registration identifiers in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-practitioner-role.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-practitioner-role"
      },
      "name" : "Fiji Practitioner Role",
      "description" : "Defines the functional, organisational, and regulatory role of a Fiji Practitioner.\n\nSupports multiple roles per practitioner (e.g., GP, hospital consultant, outreach clinician).\nIntended for use in Fiji regional health systems and future HIE environments.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-FijiPractitionerRoleExample.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/FijiPractitionerRoleExample"
      },
      "name" : "Fiji Practitioner Role District Hospital GP",
      "description" : "General Practitioner role at district hospital for registered Fiji practitioner.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-practitioner-role"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-radiology-findings-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-radiology-findings-vs"
      },
      "name" : "Fiji Radiology/Diagnostic Findings Value Set",
      "description" : "Fiji radiology findings including SNOMED CT concepts filtered for radiology and imaging findings used within an IPS context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-FijiRISAccessionNumber.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/FijiRISAccessionNumber"
      },
      "name" : "Fiji RIS Accession Number",
      "description" : "NamingSystem for RIS Accession number.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-specimen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-specimen"
      },
      "name" : "Fiji Specimen",
      "description" : "Profile of Specimen for use in Fiji health information systems.  This profile is a placeholder to be extended in subsequent versions of the Fiji Core IG.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-tikina.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-tikina"
      },
      "name" : "Fiji Tikina",
      "description" : "A code system representing the tikina (districts) of Fiji\nfor use in healthcare information exchange.\n\nCodes are based on the Fiji geographic coding convention\nand should be validated against the adopted authoritative\ngeographic dataset.\n\nTikina are associated with their respective provinces.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-tikina-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-tikina-vs"
      },
      "name" : "Fiji Tikina ValueSet",
      "description" : "The set of tikina codes recognised by the\nFiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-tokatoka.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-tokatoka"
      },
      "name" : "Fiji Tokatoka",
      "description" : "A code system representing tokatoka recognised in Fiji,\nfor use in healthcare information exchange where\nidentification of a tokatoka is required.\n\nCodes and display names must be sourced from an\nauthoritative dataset approved for the intended use.\nAccess, disclosure and use of customary information\nmust respect applicable Fiji laws and governance.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-tokatoka-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-tokatoka-vs"
      },
      "name" : "Fiji Tokatoka ValueSet",
      "description" : "Tokatoka codes recognised by the Fiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-vital-body-weight-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-vital-body-weight-vs"
      },
      "name" : "Fiji Vital Sign Body Weight ValueSet",
      "description" : "Concepts representing options that provide further context for body weight coding. (eg.  Birth Weight...)\nNOTE: This is not currently used but may be used in future when a full valueset has been developed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-vital-method-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-vital-method-vs"
      },
      "name" : "Fiji Vital Sign Measurement Method ValueSet",
      "description" : "SNOMED CT concepts representing methods used to obtain vital sign\nmeasurements, including body temperature, blood pressure, body height,\nbody weight, heart rate, oxygen saturation and respiratory rate.\nThis may be extended as required including with local codes used in historic data.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-yasana-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-yasana-vs"
      },
      "name" : "Fiji Yasana ValueSet",
      "description" : "The set of yasana codes recognised by the\nFiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-yavusa.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-yavusa"
      },
      "name" : "Fiji Yavusa",
      "description" : "A code system representing yavusa in Fiji\nfor use in healthcare information exchange.\n\nCodes and display names should be sourced from the\nauthoritative Fiji geographic administrative dataset\nadopted by the Fiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-yavusa-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-yavusa-vs"
      },
      "name" : "Fiji Yavusa ValueSet",
      "description" : "The set of yavusa codes recognised by the\nFiji Implementation Guide.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-FijiPatientExample1.html"
      }],
      "reference" : {
        "reference" : "Patient/FijiPatientExample1"
      },
      "name" : "FijiPatientExample1",
      "description" : "Example patient with official and usual names, clan affiliation, and demographic details.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-FijiPatientExample2.html"
      }],
      "reference" : {
        "reference" : "Patient/FijiPatientExample2"
      },
      "name" : "FijiPatientExample2",
      "description" : "Example patient with official and usual names, clan affiliation, and demographic details.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-head-circumference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-head-circumference"
      },
      "name" : "Head circumference Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Head Circumference.\nIt is based on the FHIR Head Circumference Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 9843-4\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Body Height was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the Body Height did not change\n* valueQuantity - the Body Height value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'cm'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Body Height measurement took place\t \n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-division-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-division-cs"
      },
      "name" : "Health administrative division codes in Fiji",
      "description" : "Health administrative division codes in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-medicalarea-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-medicalarea-cs"
      },
      "name" : "Health administrative medical area codes in Fiji",
      "description" : "Health administrative medical area codes in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-nursingzone-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-nursingzone-cs"
      },
      "name" : "Health administrative nursing zone codes in Fiji",
      "description" : "Health administrative nursing zone codes in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-subdivision-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-subdivision-cs"
      },
      "name" : "Health administrative sub-division codes in Fiji",
      "description" : "Health administrative sub division codes in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-heart-rate-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/heart-rate-loinc"
      },
      "name" : "Heart Rate LOINC Codes",
      "description" : "LOINC codes for heart rate measurements, spot or average.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-heart-rate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-heart-rate"
      },
      "name" : "Heart Rate Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Heart Rate vital observations.\nIt is based on the FHIR Heart Rate Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 8867-4\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Heart Rate was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n* valueQuantity - the Heart Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'/min'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Heart Rate measurement took place\t \n* bodySite - a SNOMED coded concept specifying the part of the body used in this measurement\n* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-HeartRateExample.html"
      }],
      "reference" : {
        "reference" : "Observation/HeartRateExample"
      },
      "name" : "HeartRateExample",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-heart-rate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-height.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-height"
      },
      "name" : "Height Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Body Height vital observations.\nIt is based on the FHIR Body Height Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 8302-2\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Body Height was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the Body Height did not change\n* valueQuantity - the Body Height value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'cm'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Body Height measurement took place\t \n* interpretation - a coded concept providing interpretation for the value \n* device - reference to the specific device used to measure\n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-immunization-status-reason.html"
      }],
      "reference" : {
        "reference" : "ValueSet/immunization-status-reason"
      },
      "name" : "Immunization Status Reason valueset for reason a vaccine was not administered",
      "description" : "Status Reason codes for reason a vaccine was not administered. \nInitial codes used are ICD-11 codes from DAK.\nTODO: Converted and/or extend from vaccine specific exception codes from SNOMED CT codes or whatever code system chosen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-imm-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/imm-vs"
      },
      "name" : "Immunization ValueSet",
      "description" : "Immunization valueset based on until Fiji-Pacific valueset is developed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-address-island.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-address-island"
      },
      "name" : "Island",
      "description" : "Island where the address is located.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-medication-request-reason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-medication-request-reason-vs"
      },
      "name" : "MedicationRequest reason code valueset",
      "description" : "MedicationRequest reason valueset for Fiji Core. \nProposed valueset is taken from SNOMED Problem/Diagnosis refsets.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-obs-interpretation-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-obs-interpretation-cs"
      },
      "name" : "Observation interpretation local codes in Fiji",
      "description" : "Observation interpretation local codes in Fiji",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-obs-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/obs-vs"
      },
      "name" : "Observation ValueSet",
      "description" : "Use all LOINC codes as temporary observation valueset until Fiji-Pacific valueset is developed",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-OxygenSaturationExample.html"
      }],
      "reference" : {
        "reference" : "Observation/OxygenSaturationExample"
      },
      "name" : "Oxygen Saturation Observation",
      "description" : "Oxygen saturation measured by pulse oximetry",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-oxygen-saturation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-oxygen-saturation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-oxygen-saturation"
      },
      "name" : "Oxygen Saturation Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Oxygen Saturation vital observations.\nIt is based on the FHIR Oxygen Saturation Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 2708-6\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Oxygen Saturation was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n* valueQuantity - the Oxygen Saturation value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'%'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Oxygen Saturation measurement took place\t \n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-respiratory-rate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-respiratory-rate"
      },
      "name" : "Respiratory Rate Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Respiratory Rate vital observations.\nIt is based on the FHIR Respiratory Rate Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 9279-1\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Respiratory Rate was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n* valueQuantity - the Respiratory Rate value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'/min'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Respiratory Rate measurement took place\t \n* method - a SNOMED coded concept from a valueset that describes procedures used for vitals measurement\n* bodyPosition (extension) - a SNOMED coded concept that desciribes the position of the body at time of measurement\n* interpretation - a coded concept providing interpretation for the value \n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-RespiratoryRateExample.html"
      }],
      "reference" : {
        "reference" : "Observation/RespiratoryRateExample"
      },
      "name" : "RespiratoryRateExample",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-vital-respiratory-rate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-service-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-service-type-vs"
      },
      "name" : "Service Type code valueset",
      "description" : "Service Type valueset for Fiji Core. \nProposed valueset is taken from SNOMED Services codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-FijiTdapImmunizationExample.html"
      }],
      "reference" : {
        "reference" : "Immunization/FijiTdapImmunizationExample"
      },
      "name" : "Tdap Immunization",
      "description" : "This is an example of a vaccination conforming to the Fiji Immunization profile.  \nSelect the JSON tab to view the JSON code that would represent this as a FHIR resource.",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-FijiImmunizationReactionExample.html"
      }],
      "reference" : {
        "reference" : "Immunization/FijiImmunizationReactionExample"
      },
      "name" : "Tdap Immunization with Reaction",
      "exampleCanonical" : "https://core.fhir.health.gov.fj/StructureDefinition/fiji-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-FijiTdapReactionObservation.html"
      }],
      "reference" : {
        "reference" : "Observation/FijiTdapReactionObservation"
      },
      "name" : "Tdap Injection Site Reaction",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-division-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-division-vs"
      },
      "name" : "Valueset of Fiji Health Administration Divisions",
      "description" : "A valueset containing Fiji Health Administration Divisions",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-medical-area-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-medical-area-vs"
      },
      "name" : "Valueset of Fiji Health Administration medical areas",
      "description" : "A valueset containing Fiji Health Administration  medical areas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-nursing-zone-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-nursing-zone-vs"
      },
      "name" : "Valueset of Fiji Health Administration nursing zones",
      "description" : "A valueset containing Fiji Health Administration  nursing zones",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-fiji-sub-division-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/fiji-sub-division-vs"
      },
      "name" : "Valueset of Fiji Health Administration Sub-divisions",
      "description" : "A valueset containing Fiji Health Administration sub-divisions",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-fiji-vital-weight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fiji-vital-weight"
      },
      "name" : "Weight Vitals - Fiji",
      "description" : "This profile defines the requirements and usage of an Observation resource recording Body Weight vital observations.\nIt is based on the FHIR Body Weight Profile and adapted as required for the Fiji Core Implementation Guide.\n\n### Mandatory elements  \nThe following elements must be recorded:\n* status - one of the following codes (registered | preliminary | final | amended +)\n* code.coding.system - must be http ://loinc.org \n* code.coding.code - must be 29463-7\n* category must have at miniumu one element conforming to following:\n  * category.coding.system - http://terminology.hl7.org/CodeSystem/observation-category\n  * category.coding.code - vital-signs\n* subject - a reference to a  Fiji Patient\n* effective[x] -  the date/time when the Body Weight was measured using one of the values below\n  * effectiveDateTime  (recommended for use where possible)\n  * effectivePeriod - this is a time period with specific start/end over which the Body Weight did not change\n* valueQuantity - the Body Weight value measured as below (if there is no value, the dataAbsentReason must be populated with a relevant code)\n  * valueQuantity.value - One numeric value\n  * valueQuantity.system - \"http://unitsofmeasure.org\"\n  * valueQuantity.code - the UCUM unit code **'kg'**\n\n### Other elements defined\n* dataAbsentReason - reason why no value present for this vital sign (mandatory if no value)\n* encounter - a reference to an encounter where/when the Body Weight measurement took place\t \n* interpretation - a coded concept providing interpretation for the value \n* device - reference to the specific device used to measure\n* note - any additional relevant information to be recorded",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-fiji-yasana.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/fiji-yasana"
      },
      "name" : "Yasana (province) largest administrative division codes in Fiji iTaukei society",
      "description" : "Yasana (province) largest administrative division codes in Fiji iTaukei society",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Fiji Core Implementation Guide",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "gettingstarted.html"
        }],
        "nameUrl" : "gettingstarted.html",
        "title" : "Contributing to the Fiji Core IG",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "datatypes.html"
        }],
        "nameUrl" : "datatypes.html",
        "title" : "Data Type Profiles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "resources.html"
        }],
        "nameUrl" : "resources.html",
        "title" : "Resource Profiles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "terminology.html"
        }],
        "nameUrl" : "terminology.html",
        "title" : "Terminology",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "snomed.html"
        }],
        "nameUrl" : "snomed.html",
        "title" : "SNOMED CT Adoption",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
