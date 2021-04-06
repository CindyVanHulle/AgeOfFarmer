Class {
	#name : #WoodCase,
	#superclass : #Cases,
	#category : #AgeOfFarmer
}

{ #category : #initialization }
WoodCase >> initialize [
	super initialize .
	points := 2
]

{ #category : #initialization }
WoodCase >> printOn: aStream [
	aStream nextPutAll: 'W'.
]
