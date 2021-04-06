Class {
	#name : #MontainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmer
}

{ #category : #initialization }
MontainCase >> getTailleArmy [
	^ character taille + 2
]

{ #category : #initialization }
MontainCase >> getTailleArmyMax [
	tailleArmyMax := 3.
	^ tailleArmyMax
]

{ #category : #initialization }
MontainCase >> initialize [
	super initialize .
	points := 4
]

{ #category : #initialization }
MontainCase >> printOn: aStream [
	aStream nextPutAll: 'M'.
]
