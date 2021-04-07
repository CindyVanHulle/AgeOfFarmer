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

{ #category : #printing }
Farmer >> printOn: aStream [
	aStream nextPutAll: 'Farmer'.
]
