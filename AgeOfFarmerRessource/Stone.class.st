Class {
	#name : #Stone,
	#superclass : #Ressource,
	#category : #AgeOfFarmerRessource
}

{ #category : #access }
Stone >> getGold [
	^gold
]

{ #category : #initialization }
Stone >> initialize [
	gold := 2.
]
