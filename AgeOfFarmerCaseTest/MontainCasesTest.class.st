Class {
	#name : #MontainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
MontainCasesTest >> testGetArmySize [
	| m army|
	army := Army withArmySize: 3.
	m := MontainCase new.
	m setCharacter: army .
	self assert: m getArmySize  equals: 3.
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

{ #category : #tests }
MontainCasesTest >> testSetArmySuperiorAt3 [
	| montain army |
	montain := MontainCase new.
	army := Army new.
	self should: [ montain setCharacter: army ] raise: ArmyTooBigError
]
