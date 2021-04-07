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
Cases >> armySize [
	^ character size
]

{ #category : #acccessing }
Cases >> armySizeMax [
	^ armySizeMax
]

{ #category : #acccessing }
Cases >> character [
	^ character
]

{ #category : #acccessing }
Cases >> character: aTypeCharacter [
	character := aTypeCharacter.
	armySizeMax := 5.
]

{ #category : #acccessing }
Cases >> initialize [ 
	armySizeMax := 5
]

{ #category : #acccessing }
Cases >> points [

	^ points
]

{ #category : #acccessing }
Cases >> printOn: aStream [
	aStream nextPutAll: 'O'.
]

{ #category : #access }
Cases >> ressource [
	^ ressource 
]

{ #category : #setter }
Cases >> ressource: aRessource [
	ressource := aRessource.
]
