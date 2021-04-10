Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
	#category : #AgeOfFarmerCharacter
}

{ #category : #access }
Farmer >> initialize [
	super initialize.

]

{ #category : #printing }
Farmer >> printOn: aStream [
	aStream nextPutAll: 'Farmer'.
]
