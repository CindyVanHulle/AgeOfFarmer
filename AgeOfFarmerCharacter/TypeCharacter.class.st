Class {
	#name : #TypeCharacter,
	#superclass : #Object,
	#instVars : [
		'player'
	],
	#classInstVars : [
		'player'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #access }
TypeCharacter class >> player [
	^ player
]

{ #category : #'instance creation' }
TypeCharacter class >> with: anPlayer [
	player := anPlayer.
]
