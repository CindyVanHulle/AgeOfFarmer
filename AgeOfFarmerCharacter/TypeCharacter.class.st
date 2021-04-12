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
	position := Case new.
]

{ #category : #getter }
TypeCharacter >> player [
	^ player
]

{ #category : #setter }
TypeCharacter >> player: aPlayer [
	player := aPlayer. 
]

{ #category : #getter }
TypeCharacter >> position [
	^ position
]

{ #category : #setter }
TypeCharacter >> position: aCase [
	aCase className = #OceanCase ifTrue: [ Transcript show: 'your unit risk to drown';cr;cr ]
	ifFalse: [ position characterEnabledOff.
	aCase characterEnabledOn.
	position := aCase. ]
	
]
