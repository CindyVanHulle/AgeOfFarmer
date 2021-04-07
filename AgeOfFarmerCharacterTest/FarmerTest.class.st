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
	| farmer case |
	farmer := Farmer new.
	case := Cases new.
	farmer position: case.
	self assert: farmer position className equals: #Cases.
]
