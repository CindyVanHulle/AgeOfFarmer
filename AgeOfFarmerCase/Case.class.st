Class {
	#name : #Case,
	#superclass : #Object,
	#instVars : [
		'points',
		'armySizeMax',
		'ressource',
		'player',
		'characterEnabled',
		'position',
		'character'
	],
	#category : #AgeOfFarmerCase
}

{ #category : #getter }
Case >> armySize [
	^ characterEnabled size
]

{ #category : #getter }
Case >> armySizeMax [
	^ armySizeMax
]

{ #category : #getter }
Case >> character [
	 ^ character
]

{ #category : #setter }
Case >> character: anArmy [ 
	character := anArmy
]

{ #category : #getter }
Case >> characterEnabled [
	^ characterEnabled
]

{ #category : #'enable/disable' }
Case >> characterEnabledOff [
	characterEnabled := false.
]

{ #category : #'enable/disable' }
Case >> characterEnabledOn [
	characterEnabled := true.
]

{ #category : #initialize }
Case >> initialize [ 
	armySizeMax := 5.
	characterEnabled := false.
]

{ #category : #getter }
Case >> player [
	^ player
]

{ #category : #setter }
Case >> player: aPlayer [ 
	player := aPlayer
]

{ #category : #getter }
Case >> points [

	^ points
]

{ #category : #setter }
Case >> position [
	^ position
]

{ #category : #setter }
Case >> position: aPoint [
	position := aPoint
]

{ #category : #printing }
Case >> printOn: aStream [
	aStream nextPutAll: ' O '.
]

{ #category : #getter }
Case >> ressource [
	^ ressource 
]

{ #category : #setter }
Case >> ressource: aRessource [
	ressource := aRessource.
]
