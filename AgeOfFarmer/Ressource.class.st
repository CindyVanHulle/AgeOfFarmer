Class {
	#name : #Ressource,
	#superclass : #Object,
	#instVars : [
		'unityNourriture'
	],
	#category : #AgeOfFarmer
}

{ #category : #acccessing }
Ressource >> getNourriture [

	^ unityNourriture
]

{ #category : #acccessing }
Ressource >> initialize [ 
	unityNourriture := 0
]
