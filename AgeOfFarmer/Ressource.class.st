Class {
	#name : #Ressource,
	#superclass : #Object,
	#instVars : [
		'unitsFood'
	],
	#category : #AgeOfFarmer
}

{ #category : #acccessing }
Ressource >> getNourriture [

	^ unitsFood
]

{ #category : #acccessing }
Ressource >> initialize [ 
	unitsFood := 0
]
