Class {
	#name : #Cases,
	#superclass : #Object,
	#instVars : [
		'points',
		'armySizeMax',
		'ressource',
		'player',
		'characterEnabled'
	],
	#category : #AgeOfFarmerCase
}

{ #category : #acccessing }
Cases >> armySize [
	^ characterEnabled size
]

{ #category : #acccessing }
Cases >> armySizeMax [
	^ armySizeMax
]

{ #category : #acccessing }
Cases >> characterEnabled [
	^ characterEnabled
]

{ #category : #acccessing }
Cases >> characterEnabledOff [
	characterEnabled := false.
]

{ #category : #acccessing }
Cases >> characterEnabledOn [
	characterEnabled := true.
]

{ #category : #acccessing }
Cases >> initialize [ 
	armySizeMax := 5.
	characterEnabled := false.
]

{ #category : #access }
Cases >> player [
	^ player
]

{ #category : #creating }
Cases >> player: aPlayer [ 
	player := aPlayer
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
