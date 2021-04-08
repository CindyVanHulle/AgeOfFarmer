Class {
	#name : #DesertCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
DesertCase >> armySizeMax [
	
	^ armySizeMax
]

{ #category : #creation }
DesertCase >> harvest [
	^ Sand new.
]

{ #category : #initialization }
DesertCase >> initialize [
	super initialize .
	points := 4.
	armySizeMax := 3.
]

{ #category : #initialization }
DesertCase >> printOn: aStream [
	aStream nextPutAll: 'D'.
]
