Class {
	#name : #Wheat,
	#superclass : #Food,
	#category : #AgeOfFarmerRessource
}

{ #category : #access }
Wheat >> getGold [
	^gold
]

{ #category : #initialization }
Wheat >> initialize [
	gold := 2.
	unitsFood := 5.
]
