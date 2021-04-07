Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
	#instVars : [
		'position'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #initialization }
Farmer >> initialize [ 
	position:= 0@0.
]

{ #category : #access }
Farmer >> position [ 
	^ position.
]

{ #category : #setter }
Farmer >> setPosition: aPoint [  
	position := aPoint
]
