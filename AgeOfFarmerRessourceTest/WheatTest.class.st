Class {
	#name : #WheatTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerRessourceTest
}

{ #category : #tests }
WheatTest >> testGetFood [ 
	| wheat |
	wheat := Wheat new.
	self assert: wheat unitsFood equals: 5.
]

{ #category : #tests }
WheatTest >> testGetGold [
	| wheat |
	wheat := Wheat new.
	self assert: wheat gold equals: 2.
]
