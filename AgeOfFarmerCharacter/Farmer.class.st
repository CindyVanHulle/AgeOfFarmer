Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
	#instVars : [
		'position'
	],
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
