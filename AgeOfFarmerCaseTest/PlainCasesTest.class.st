Class {
	#name : #PlainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
PlainCasesTest >> testGetArmySize [
	| p army|
	army := Army new.
	p := PlainCase new.
	p setCharacter: army .
	self assert: p getArmySize equals: 5.
]

{ #category : #tests }
PlainCasesTest >> testGetArmySizeMax [
	| p |
	p := PlainCase new.
	self assert: p getArmySizeMax equals: 5.
]

{ #category : #tests }
PlainCasesTest >> testGetPoints [
	| p |
	p := PlainCase new.
	self assert: p getPoints equals: 1.
]

{ #category : #tests }
PlainCasesTest >> testHarvest [ 
	| plain |
	plain := PlainCase new.
	self assert: plain harvest equals: #Wheat
]
