Class {
	#name : #DesertCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
DesertCase >> getArmySizeMax [
	armySizeMax := 3.
	^ armySizeMax
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
