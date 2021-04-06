Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'nbPieces',
		'nbTerritoire',
		'nbGuerrier',
		'nbNourriture'
	],
	#category : #AgeOfFarmer
}

{ #category : #initialization }
Player >> decrementNbGuerrier [
	nbGuerrier  := nbGuerrier - 1
]

{ #category : #initialization }
Player >> decrementNbGuerrierOf: anInteger [
	nbGuerrier  := nbGuerrier - anInteger
]

{ #category : #initialization }
Player >> decrementNbNourriture [
	nbNourriture   := nbNourriture - 1
]

{ #category : #initialization }
Player >> decrementNbOr [
	nbPieces := nbPieces - 1
]

{ #category : #initialization }
Player >> decrementNbTerritoire [
	nbTerritoire  := nbTerritoire - 1
]

{ #category : #initialization }
Player >> getNbGuerrier [
	^ nbGuerrier 
]

{ #category : #initialization }
Player >> getNbNourriture [
	^ nbNourriture 
]

{ #category : #initialization }
Player >> getNbOr [
	^ nbPieces  
]

{ #category : #initialization }
Player >> getNbTerritoire [
	^ nbTerritoire   
]

{ #category : #initialization }
Player >> incrementNbGuerrier [
	nbGuerrier  := nbGuerrier + 1
]

{ #category : #initialization }
Player >> incrementNbGuerrierOf: anInteger [
	nbGuerrier  := nbGuerrier + anInteger
]

{ #category : #initialization }
Player >> incrementNbNourriture [
	nbNourriture   := nbNourriture + 1
]

{ #category : #initialization }
Player >> incrementNbOr [
	nbPieces := nbPieces + 1
]

{ #category : #initialization }
Player >> incrementNbTerritoire [
	nbTerritoire  := nbTerritoire + 1
]

{ #category : #initialization }
Player >> initialize [

	nbPieces := 0.
	nbTerritoire := 0.
	nbGuerrier := 35.
	nbNourriture := 10
]
