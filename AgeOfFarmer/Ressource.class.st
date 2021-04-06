Class {
	#name : #Ressource,
	#superclass : #Object,
	#instVars : [
		'unitsFood'
	],
	#category : #AgeOfFarmer
}

{ #category : #acccessing }
Ressource >> getFood [

	^ unitsFood
]

{ #category : #acccessing }
Ressource >> initialize [ 
	unitsFood := 0
]
