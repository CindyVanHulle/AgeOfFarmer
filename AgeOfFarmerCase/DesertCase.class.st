Class {
	#name : #DesertCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
DesertCase >> getArmySizeMax [
	
	^ armySizeMax
]

{ #category : #initialization }
DesertCase >> initialize [
	super initialize .
	points := 4.
	armySizeMax := 3.
]

{ #category : #initialization }
DesertCase >> printOn: aStream [
	aStream nextPutAll: 'D'.
]

{ #category : #acccessing }
DesertCase >> setCharacter: anCharacter [
	anCharacter size > armySizeMax ifTrue: [ ArmyTooBigError new signal: 'your army is too big'].
	super setCharacter: anCharacter.
	
]
