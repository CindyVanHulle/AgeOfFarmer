Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
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
