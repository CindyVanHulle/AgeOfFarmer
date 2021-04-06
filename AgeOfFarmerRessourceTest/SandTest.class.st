Class {
	#name : #SandTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
SandTest >> testGetGold [
	| sand |
	sand := Sand new.
	self assert: sand getGold equals: 5.
]
