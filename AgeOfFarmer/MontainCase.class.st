Class {
	#name : #MontainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmer
}

{ #category : #initialization }
MontainCase >> initialize [

	points := 4
]

{ #category : #initialization }
MontainCase >> printOn: aStream [
	aStream nextPutAll: 'M'.
]
