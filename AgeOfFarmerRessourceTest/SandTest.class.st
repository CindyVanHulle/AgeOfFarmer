Class {
	#name : #SandTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
SandTest >> testGetFood [ 
	| sand |
	sand := Sand new.
	self assert: sand getFood equals: 0.
]
