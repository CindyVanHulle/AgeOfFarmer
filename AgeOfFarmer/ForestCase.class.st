Class {
	#name : #ForestCase,
	#superclass : #Cases,
	#category : #AgeOfFarmer
}

{ #category : #initialization }
ForestCase >> initialize [
	super initialize .
	points := 2
]

{ #category : #initialization }
ForestCase >> printOn: aStream [
	aStream nextPutAll: 'W'.
]
