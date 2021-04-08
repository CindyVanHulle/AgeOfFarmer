Class {
	#name : #TypeCharacterTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
TypeCharacterTest >> testGetPlayer [
	| p character |
	p := Player new.
	character := TypeCharacter with: p.
	self assert: character p className equals: #Player.
]
