Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
	#instVars : [
		'position'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #access }
Farmer >> position [ 
	^ position.
]

{ #category : #setter }
Farmer >> setPosition: aPoint [  
	position := aPoint
]
