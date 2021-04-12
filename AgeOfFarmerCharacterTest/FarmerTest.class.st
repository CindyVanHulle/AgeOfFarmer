Class {
	#name : #FarmerTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
FarmerTest >> testGetPosition [
	| farmer |
	farmer := Farmer new.
	self assert: farmer position className equals: #Case.
]

{ #category : #tests }
FarmerTest >> testSetPosition [
	| farmer case |
	farmer := Farmer new.
	case := Case new.
	farmer position: case.
	self assert: farmer position className equals: #Case.
]
