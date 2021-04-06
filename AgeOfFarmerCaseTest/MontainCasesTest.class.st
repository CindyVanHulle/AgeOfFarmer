Class {
	#name : #MontainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
MontainCasesTest >> testGetPoints [
	| m |
	m := MontainCase new.
	self assert: m getPoints  equals: 4.
]

{ #category : #tests }
MontainCasesTest >> testGetTailleArmy [
	| m army|
	army := Army new.
	m := MontainCase new.
	m setCharacter: army .
	self assert: m getTailleArmy  equals: 7.
]

{ #category : #tests }
MontainCasesTest >> testGetTailleArmyMax [
	| m |
	m := MontainCase new.
	self assert: m getTailleArmyMax  equals: 3.
]
