Class {
	#name : #PlainCase,
	#superclass : #Case,
	#category : #AgeOfFarmerCase
}

{ #category : #creation }
PlainCase >> costGold [
	^ -1.
]

{ #category : #creation }
PlainCase >> goldGain [
	^ 2.
]

{ #category : #creation }
PlainCase >> harvest [
	^ 5.
]

{ #category : #initialization }
PlainCase >> initialize [
	super initialize .
	points := 1
]

{ #category : #initialization }
PlainCase >> printOn: aStream [
	aStream nextPutAll: ' P '.
]
