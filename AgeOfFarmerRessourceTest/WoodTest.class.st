Class {
	#name : #WoodTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
WoodTest >> testGetFood [ 
	| wood |
	wood := Wood new.
	self assert: wood getFood equals: 1.
]
