Class {
	#name : #MontainCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
MontainCase >> armySize [
	^ characterEnabled size
]

{ #category : #initialization }
MontainCase >> armySizeMax [
	
	^ armySizeMax
]

{ #category : #creation }
MontainCase >> costGold [
	^ -5.
]

{ #category : #creation }
MontainCase >> goldGain [
	^ 8.
]

{ #category : #creation }
MontainCase >> harvest [
	^ 0
]

{ #category : #initialization }
MontainCase >> initialize [
	super initialize .
	points := 4.
	armySizeMax := 3.
]

{ #category : #initialization }
MontainCase >> printOn: aStream [
	aStream nextPutAll: ' M '.
]
