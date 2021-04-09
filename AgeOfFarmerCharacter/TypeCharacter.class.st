Class {
	#name : #TypeCharacter,
	#superclass : #Object,
	#instVars : [
		'player',
		'position'
	],
	#classInstVars : [
		'player'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #'instance creation' }
TypeCharacter class >> with: anPlayer [
	^ self new player: anPlayer.
]

{ #category : #initialization }
TypeCharacter >> initialize [ 
	super initialize.
	position := Cases new.
]

{ #category : #creating }
TypeCharacter >> player [
	^ player
]

{ #category : #creating }
TypeCharacter >> player: aPlayer [
	player := aPlayer. 
]

{ #category : #accessing }
TypeCharacter >> position [
	^ position
]

{ #category : #accessing }
TypeCharacter >> position: aCase [
	position characterEnabledOff.
	aCase characterEnabledOn.
	position := aCase.
]
