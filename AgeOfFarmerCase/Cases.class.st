Class {
	#name : #Cases,
	#superclass : #Object,
	#instVars : [
		'points',
		'character',
		'tailleArmyMax'
	],
	#category : #AgeOfFarmerCase
}

{ #category : #acccessing }
Cases >> getCharacter [
	^ character
]

{ #category : #acccessing }
Cases >> getPoints [

	^ points
]

{ #category : #acccessing }
Cases >> getTailleArmy [
	^ character taille
]

{ #category : #acccessing }
Cases >> getTailleArmyMax [
	^ tailleArmyMax
]

{ #category : #acccessing }
Cases >> initialize [ 
	tailleArmyMax := 5
]

{ #category : #acccessing }
Cases >> printOn: aStream [
	aStream nextPutAll: 'O'.
]

{ #category : #acccessing }
Cases >> setCharacter: aTypeCharacter [
	character := aTypeCharacter.
	tailleArmyMax := 5.
]
