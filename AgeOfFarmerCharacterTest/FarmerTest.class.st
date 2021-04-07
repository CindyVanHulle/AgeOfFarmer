Class {
	#name : #FarmerTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
FarmerTest >> testGetPosition [
	| farmer |
	farmer := Farmer new.
	self assert: farmer position equals: 0@0.
]

{ #category : #tests }
FarmerTest >> testSetPosition [
	| farmer |
	farmer := Farmer new.
	farmer position: 4@2 .
	self assert: farmer position equals: 4@2.
]
