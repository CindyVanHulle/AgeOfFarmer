Class {
	#name : #WoodTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
WoodTest >> testGetFood [ 
	| wood |
	wood := Wood new.
	self assert: wood unitsFood equals: 1.
]

{ #category : #tests }
WoodTest >> testGetGold [
	| wood |
	wood := Wood new.
	self assert: wood gold equals: 8.
]
