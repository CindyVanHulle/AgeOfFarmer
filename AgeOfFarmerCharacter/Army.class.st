Class {
	#name : #Army,
	#superclass : #TypeCharacter,
	#instVars : [
		'taille',
		'stockOr'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #creating }
Army class >> withArmySize: anInteger [ 
	^ self new size: anInteger
]

{ #category : #acccessing }
Army >> costFood [
	^ taille
]

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
Army >> size [
	^ taille
]

{ #category : #acccessing }
Army >> size: anInteger [ 
	taille := anInteger
]

{ #category : #acccessing }
Army >> stockOr [
	^ stockOr
]
