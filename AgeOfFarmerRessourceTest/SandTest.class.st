Class {
	#name : #SandTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
SandTest >> testGetGold [
	| sand |
	sand := Sand new.
	self assert: sand gold equals: 5.
]
