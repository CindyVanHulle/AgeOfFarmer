Class {
	#name : #Army,
	#superclass : #TypeCharacter,
	#instVars : [
		'taille',
		'stockOr'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #acccessing }
Army >> incrementOr [
	stockOr := stockOr + 1
]

{ #category : #acccessing }
Army >> initialize [ 
	taille := 5.
	stockOr := 0.
]

{ #category : #acccessing }
Army >> nbNourritureConsomme [
	^ taille
]

{ #category : #acccessing }
Army >> stockOr [
	^ stockOr
]

{ #category : #acccessing }
Army >> taille [
	^ taille
]
