Class {
	#name : #WoodCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
WoodCasesTest >> testGetPoints [
	| w |
	w := WoodCase new.
	self assert: w getPoints equals: 2.
]

{ #category : #tests }
WoodCasesTest >> testGetTailleArmy [
	| w army|
	army := Army new.
	w := WoodCase new.
	w setCharacter: army .
	self assert: w getTailleArmy equals: 5.
]

{ #category : #tests }
WoodCasesTest >> testGetTailleArmyMax [
	| w |
	w := WoodCase new.
	self assert: w getTailleArmyMax equals: 5.
]
