Class {
	#name : #Food,
	#superclass : #Ressource,
	#instVars : [
		'unitsFood'
	],
	#category : #AgeOfFarmerRessource
}

{ #category : #acccessing }
Food >> getFood [ 
	^ unitsFood
]
