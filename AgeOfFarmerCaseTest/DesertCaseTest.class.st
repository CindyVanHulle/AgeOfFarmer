Class {
	#name : #DesertCaseTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
DesertCaseTest >> testCostGold [
	| desert |
	desert := DesertCase new.
	self assert: desert costGold equals: -3
]

{ #category : #tests }
DesertCaseTest >> testGetArmySizeMax [
	| d |
	d := DesertCase new.
	self assert: (d armySizeMax  ) equals: 3.
]

{ #category : #tests }
DesertCaseTest >> testGetPoints [
	| d |
	d := DesertCase new.
	self assert: (d points ) equals: 4.
]

{ #category : #tests }
DesertCaseTest >> testHarvest [
	| desert |
	desert := DesertCase new.
	self assert: desert goldGain equals: 5
]
