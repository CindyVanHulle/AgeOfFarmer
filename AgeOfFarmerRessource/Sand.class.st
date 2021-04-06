Class {
	#name : #Sand,
	#superclass : #Ressource,
	#category : #AgeOfFarmerRessource
}

{ #category : #access }
Sand >> getGold [
	^gold
]

{ #category : #initialization }
Sand >> initialize [
	gold := 5.
]
