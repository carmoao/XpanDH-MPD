Profile: MedicationEpXpandh
Parent: $Medication-uv-ips
// DEFINE THIS AS SPECIALIZAITON OF A COMMON EHDSI PROFILE
Id: Medication-ep-eu-xpandh
Title: "Medication: XpanDH"
Description: "This profile defines how to represent MedicationRequest in FHIR for the purpose of the XpanDH project eP/eD POC."

* extension contains $medication-definition-r5 named MedicationDefinitionR5 0..
* extension[MedicationDefinitionR5].valueReference only Reference(MedicationKnowledge)

* contained only MedicationKnowledge 
* ^purpose = "This profile constrains the Medication resource for the purpose of the eP/eD proof of concept."
* code from $eHDSIActiveIngredient (preferred)
* code ^short = "Any kind of product code (including ATC)"
// ADD ADDITIONAL VALUE SET
* ingredient
  * itemCodeableConcept from $eHDSISubstance (preferred)
  * itemReference only Reference (MedicationEpXpandh)
  * isActive ^short = "Usually true"
  * strength ^short = "A kind of strength"
  * strength ^definition = """A kind of strength.
  Definitional resources should be used for specifying the different types of strengths: presentation; concentration;.."""
* form from $eHDSIDoseForm

