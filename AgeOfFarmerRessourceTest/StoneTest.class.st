Class {
	#name : #StoneTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
StoneTest >> testGetFood [ 
	| stone |
	stone := Rock new.
	self assert: stone getFood equals: 0.
]
