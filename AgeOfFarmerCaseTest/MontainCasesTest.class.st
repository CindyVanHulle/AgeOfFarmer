Class {
	#name : #MontainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
MontainCasesTest >> testGetArmySize [
	| m army|
	army := Army new.
	m := MontainCase new.
	m setCharacter: army .
	self assert: m getArmySize  equals: 7.
]

{ #category : #tests }
MontainCasesTest >> testGetArmySizeMax [
	| m |
	m := MontainCase new.
	self assert: m getArmySizeMax  equals: 3.
]

{ #category : #tests }
MontainCasesTest >> testGetPoints [
	| m |
	m := MontainCase new.
	self assert: m getPoints  equals: 4.
]
