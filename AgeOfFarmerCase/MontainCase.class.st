Class {
	#name : #MontainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
MontainCase >> armySize [
	^ character size
]

{ #category : #initialization }
MontainCase >> armySizeMax [
	
	^ armySizeMax
]

{ #category : #acccessing }
MontainCase >> character: anCharacter [
	anCharacter size > armySizeMax ifTrue: [ ArmyTooBigError new signal: 'your army is too big'].
	super character: anCharacter.
]

{ #category : #creation }
MontainCase >> harvest [
	^ Stone new.
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
