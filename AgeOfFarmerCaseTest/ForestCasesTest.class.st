Class {
	#name : #ForestCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
ForestCasesTest >> testGetArmySize [
	| w army|
	army := Army new.
	w := ForestCase new.
	w character: army .
	self assert: w armySize equals: 5.
]

{ #category : #tests }
ForestCasesTest >> testGetArmySizeMax [
	| w |
	w := ForestCase new.
	self assert: w armySizeMax equals: 5.
]

{ #category : #tests }
ForestCasesTest >> testGetPoints [
	| w |
	w := ForestCase new.
	self assert: w points equals: 2.
]

{ #category : #tests }
ForestCasesTest >> testHarvest [ 
	| forest |
	forest := ForestCase new.
	self assert: forest harvest className equals: #Wood
]
