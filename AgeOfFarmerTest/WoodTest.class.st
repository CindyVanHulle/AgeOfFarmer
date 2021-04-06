Class {
	#name : #WoodTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
WoodTest >> testGetFood [ 
	| wood |
	wood := Wood new.
	self assert: wood getFood equals: 1.
]
