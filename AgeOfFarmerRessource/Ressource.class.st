Class {
	#name : #Ressource,
	#superclass : #Object,
	#instVars : [
		'gold'
	],
	#category : #AgeOfFarmerRessource
}

{ #category : #access }
Ressource >> gold [ 
	^ gold
]

{ #category : #acccessing }
Ressource >> initialize [ 
	gold := 0
]
