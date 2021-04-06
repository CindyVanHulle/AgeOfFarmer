Class {
	#name : #Wood,
	#superclass : #Food,
	#category : #AgeOfFarmerRessource
}

{ #category : #access }
Wood >> getGold [
	^ gold
]

{ #category : #initialization }
Wood >> initialize [
	gold := 8.
	unitsFood := 1.
]
