Class {
	#name : #MontainCaseTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
MontainCaseTest >> testCostGold [ 
	| montain |
	montain := MontainCase new.
	self assert: montain costGold equals: -5
]

{ #category : #tests }
MontainCaseTest >> testGetArmySizeMax [
	| m |
	m := MontainCase new.
	self assert: m armySizeMax  equals: 3.
]

{ #category : #tests }
MontainCaseTest >> testGetPoints [
	| m |
	m := MontainCase new.
	self assert: m points  equals: 4.
]

{ #category : #tests }
MontainCaseTest >> testHarvest [ 
	| montain |
	montain := MontainCase new.
	self assert: montain goldGain equals: 8
]
