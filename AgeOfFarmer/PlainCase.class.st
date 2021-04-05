Class {
	#name : #PlainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmer
}

{ #category : #initialization }
PlainCase >> initialize [

	points := 1
]

{ #category : #initialization }
PlainCase >> printOn: aStream [
	aStream nextPutAll: 'P'.
]
