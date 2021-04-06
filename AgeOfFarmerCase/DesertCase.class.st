Class {
	#name : #DesertCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
DesertCase >> getTailleArmyMax [
	tailleArmyMax := 3.
	^ tailleArmyMax
]

{ #category : #initialization }
DesertCase >> initialize [
	super initialize .
	points := 4
]

{ #category : #initialization }
DesertCase >> printOn: aStream [
	aStream nextPutAll: 'D'.
]
