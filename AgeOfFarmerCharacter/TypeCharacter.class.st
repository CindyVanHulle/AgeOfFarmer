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

{ #category : #access }
TypeCharacter >> player [
	^ player
]

{ #category : #creating }
TypeCharacter >> player: anPlayer [
	player := anPlayer. 
]

{ #category : #accessing }
TypeCharacter >> position [
	^ position
]

{ #category : #accessing }
TypeCharacter >> position: anCase [
	position characterEnabledOff.
	anCase characterEnabledOn.
	position := anCase.
]
