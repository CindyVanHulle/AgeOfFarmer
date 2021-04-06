Class {
	#name : #ForestCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
ForestCasesTest >> testGetPoints [
	| w |
	w := ForestCase new.
	self assert: w getPoints equals: 2.
]

{ #category : #tests }
ForestCasesTest >> testGetTailleArmy [
	| w army|
	army := Army new.
	w := ForestCase new.
	w setCharacter: army .
	self assert: w getTailleArmy equals: 5.
]

{ #category : #tests }
ForestCasesTest >> testGetTailleArmyMax [
	| w |
	w := ForestCase new.
	self assert: w getTailleArmyMax equals: 5.
]
