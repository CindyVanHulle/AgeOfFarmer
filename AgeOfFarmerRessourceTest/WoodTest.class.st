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

{ #category : #tests }
WoodTest >> testGetGold [
	| wood |
	wood := Wood new.
	self assert: wood getGold equals: 8.
]
