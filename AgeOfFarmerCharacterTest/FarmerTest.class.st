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
	farmer setPosition: 5@6.
	self assert: farmer position equals: 5@6.
]
