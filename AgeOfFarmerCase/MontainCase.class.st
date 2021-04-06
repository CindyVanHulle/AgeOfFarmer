Class {
	#name : #MontainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
MontainCase >> getArmySize [
	^ character size + 2
]

{ #category : #initialization }
MontainCase >> getArmySizeMax [
	
	^ armySizeMax
]

{ #category : #initialization }
MontainCase >> initialize [
	super initialize .
	points := 4.
	armySizeMax := 3.
]

{ #category : #initialization }
MontainCase >> printOn: aStream [
	aStream nextPutAll: 'M'.
]

{ #category : #acccessing }
MontainCase >> setCharacter: anCharacter [
	anCharacter size > armySizeMax ifTrue: [ ArmyTooBigError new signal: 'your army is too big'].
	super setCharacter: anCharacter.
]
