Class {
	#name : #ForestCase,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #creation }
ForestCase >> costGold [
	^ -1.
]

{ #category : #creation }
ForestCase >> goldGain [
	^ 8
]

{ #category : #creation }
ForestCase >> harvest [
	^ 1
]

{ #category : #initialization }
ForestCase >> initialize [
	super initialize .
	points := 2
]

{ #category : #initialization }
ForestCase >> printOn: aStream [
	aStream nextPutAll: ' F '.
]
