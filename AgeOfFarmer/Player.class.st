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
Player >> initialize [

	nbPieces := 0.
	nbTerritoire := 0.
	nbGuerrier := 35.
	nbNourriture := 10
]
