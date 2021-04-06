Class {
	#name : #Ressource,
	#superclass : #Object,
	#category : #AgeOfFarmerRessource
}

{ #category : #acccessing }
Ressource >> getFood [

	^ unitsFood
]

{ #category : #acccessing }
Ressource >> initialize [ 
	unitsFood := 0
]
