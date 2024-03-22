Profile: MedicationDispenseXpandh
Parent: MedicationDispense 
Id: MedicationDispense-eu-xpandh
Title: "MedicationDispense: XpanDH"
Description: "This profile defines how to represent the supply and the associated administration instructions in HL7 FHIR for the purpose of this guide."

* identifier ^short = "Identifier for this dispensation"
* medicationReference 1..
* medicationReference only Reference ( MedicationEpXpandh )
* subject only Reference ( PatientXpandh )
* performer ^short = "Who performed the dispensation."
* performer.actor only Reference ( Practitioner or PractitionerRole or Organization )
* authorizingPrescription only Reference ( MedicationRequestXpandh )
* quantity ^short = "Amount dispensed."
* substitution ^short = "Details about substitution"
