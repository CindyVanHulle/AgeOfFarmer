Class {
	#name : #Cases,
	#superclass : #Object,
	#instVars : [
		'points',
		'character',
		'armySizeMax',
		'ressource'
	],
	#category : #AgeOfFarmerCase
}

{ #category : #acccessing }
Cases >> getArmySize [
	^ character size
]

{ #category : #acccessing }
Cases >> getArmySizeMax [
	^ armySizeMax
]

{ #category : #acccessing }
Cases >> getCharacter [
	^ character
]

{ #category : #acccessing }
Cases >> getPoints [

	^ points
]

{ #category : #access }
Cases >> getRessource [
	^ ressource 
]

{ #category : #acccessing }
Cases >> initialize [ 
	armySizeMax := 5
]

{ #category : #acccessing }
Cases >> printOn: aStream [
	aStream nextPutAll: 'O'.
]

{ #category : #acccessing }
Cases >> setCharacter: aTypeCharacter [
	character := aTypeCharacter.
	armySizeMax := 5.
]

{ #category : #setter }
Cases >> setRessource: aRessource [
	ressource := aRessource.
]
