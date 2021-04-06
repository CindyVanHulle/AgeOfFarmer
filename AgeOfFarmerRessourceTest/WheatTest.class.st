Class {
	#name : #WheatTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
WheatTest >> testGetFood [ 
	| wheat |
	wheat := Wheat new.
	self assert: wheat getFood equals: 5.
]
