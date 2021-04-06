Class {
	#name : #PlainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #creation }
PlainCase >> harvest [
	^ Wheat new.
]

{ #category : #initialization }
PlainCase >> initialize [
	super initialize .
	points := 1
]

{ #category : #initialization }
PlainCase >> printOn: aStream [
	aStream nextPutAll: 'P'.
]
