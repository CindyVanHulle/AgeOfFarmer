Class {
	#name : #ForestCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
ForestCasesTest >> testCostGold [ 
	| forest |
	forest := ForestCase new.
	self assert: forest costGold equals: -1
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
	self assert: forest goldGain equals: 8
]
