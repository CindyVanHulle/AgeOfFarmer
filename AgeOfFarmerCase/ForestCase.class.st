Class {
	#name : #ForestCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #creation }
ForestCase >> harvest [
	^ Wood new.
]

{ #category : #initialization }
ForestCase >> initialize [
	super initialize .
	points := 2
]

{ #category : #initialization }
ForestCase >> printOn: aStream [
	aStream nextPutAll: 'F'.
]
