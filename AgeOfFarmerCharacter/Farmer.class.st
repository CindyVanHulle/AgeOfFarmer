Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
	#category : #AgeOfFarmerCharacter
}

{ #category : #access }
Farmer >> initialize [
	super initialize.
	position := 0@0.
]

{ #category : #access }
Farmer >> position [
	^ position
]

{ #category : #setter }
Farmer >> position: aPoint [  
	position := aPoint
]
