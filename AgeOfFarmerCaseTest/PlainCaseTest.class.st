Class {
	#name : #PlainCaseTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
PlainCaseTest >> testCostGold [
	| plain |
	plain := PlainCase new.
	self assert: plain costGold equals: -1
]

{ #category : #tests }
PlainCaseTest >> testGetArmySizeMax [
	| p |
	p := PlainCase new.
	self assert: p armySizeMax equals: 5.
]

{ #category : #tests }
PlainCaseTest >> testGetPoints [
	| p |
	p := PlainCase new.
	self assert: p points equals: 1.
]

{ #category : #tests }
PlainCaseTest >> testHarvest [ 
	| plain |
	plain := PlainCase new.
	self assert: plain goldGain equals: 2
]
