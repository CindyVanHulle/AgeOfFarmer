Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'players'
	],
	#category : #AgeOfFarmer
}

{ #category : #initialization }
Game >> initialize [ 
	super initialize.
	players := LinkedList new.
]

{ #category : #accessing }
Game >> players [
	^ players
]

{ #category : #initialization }
Game >> players: aPlayer [
	players add: aPlayer 
]
