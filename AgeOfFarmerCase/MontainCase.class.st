Class {
	#name : #MontainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
MontainCase >> getArmySize [
	^ character size + 2
]

{ #category : #initialization }
MontainCase >> getArmySizeMax [
	armySizeMax := 3.
	^ armySizeMax
]

{ #category : #initialization }
MontainCase >> initialize [
	super initialize .
	points := 4
]

{ #category : #initialization }
MontainCase >> printOn: aStream [
	aStream nextPutAll: 'M'.
]
