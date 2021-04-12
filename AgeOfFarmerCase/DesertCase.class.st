Class {
	#name : #DesertCase,
	#superclass : #Case,
	#category : #AgeOfFarmerCase
}

{ #category : #initialization }
DesertCase >> armySizeMax [
	
	^ armySizeMax
]

{ #category : #creation }
DesertCase >> costGold [
	^ -3.
]

{ #category : #creation }
DesertCase >> goldGain [
	^ 5.
]

{ #category : #creation }
DesertCase >> harvest [
	^ 0
]

{ #category : #initialization }
DesertCase >> initialize [
	super initialize .
	points := 4.
	armySizeMax := 3.
]

{ #category : #initialization }
DesertCase >> printOn: aStream [
	aStream nextPutAll: ' D '.
]
