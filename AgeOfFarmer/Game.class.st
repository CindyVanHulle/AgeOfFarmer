Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'players'
	],
	#category : #AgeOfFarmer
}

{ #category : #initialization }
Game >> addPlayers: aPlayer [
	players add: aPlayer 
]

{ #category : #initialization }
Game >> initialize [ 
	super initialize.
	players := LinkedList new.
]

{ #category : #playing }
Game >> playGame: aNumberOfPlayer [
	1 to: aNumberOfPlayer do: [ self addPlayers: Player new. ].
	1 to: 10 do: 
		[ self players do: 
			[ :player | player playARound ] ]
	"recherche du vainqueur"
]

{ #category : #accessing }
Game >> players [
	^ players
]
