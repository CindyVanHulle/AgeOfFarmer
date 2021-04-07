Class {
	#name : #TypeCharacterTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
TypeCharacterTest >> testGetPlayer [
	| player character |
	player := Player new.
	character := TypeCharacter with: player.
	self assert: character player equals: player.
]
