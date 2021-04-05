Class {
	#name : #DesertCase,
	#superclass : #Cases,
	#category : #AgeOfFarmer
}

{ #category : #initialization }
DesertCase >> initialize [

	points := 4
]

{ #category : #initialization }
DesertCase >> printOn: aStream [
	aStream nextPutAll: 'D'.
]
