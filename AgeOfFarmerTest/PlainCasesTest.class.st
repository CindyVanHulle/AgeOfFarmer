Class {
	#name : #PlainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
PlainCasesTest >> testGetPoints [
	| p |
	p := PlainCase new.
	self assert: p getPoints equals: 1.
]

{ #category : #tests }
PlainCasesTest >> testGetTailleArmy [
	| p army|
	army := Army new.
	p := PlainCase new.
	p setCharacter: army .
	self assert: p getTailleArmy equals: 5.
]

{ #category : #tests }
PlainCasesTest >> testGetTailleArmyMax [
	| p |
	p := PlainCase new.
	self assert: p getTailleArmyMax equals: 5.
]
