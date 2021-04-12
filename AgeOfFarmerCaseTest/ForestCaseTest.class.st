Class {
	#name : #ForestCaseTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
ForestCaseTest >> testCostGold [ 
	| forest |
	forest := ForestCase new.
	self assert: forest costGold equals: -1
]

{ #category : #tests }
ForestCaseTest >> testGetArmySizeMax [
	| w |
	w := ForestCase new.
	self assert: w armySizeMax equals: 5.
]

{ #category : #tests }
ForestCaseTest >> testGetPoints [
	| w |
	w := ForestCase new.
	self assert: w points equals: 2.
]

{ #category : #tests }
ForestCaseTest >> testHarvest [ 
	| forest |
	forest := ForestCase new.
	self assert: forest goldGain equals: 8
]
