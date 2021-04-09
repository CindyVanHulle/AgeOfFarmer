Class {
	#name : #MontainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
MontainCasesTest >> testGetArmySizeMax [
	| m |
	m := MontainCase new.
	self assert: m armySizeMax  equals: 3.
]

{ #category : #tests }
MontainCasesTest >> testGetPoints [
	| m |
	m := MontainCase new.
	self assert: m points  equals: 4.
]

{ #category : #tests }
MontainCasesTest >> testHarvest [ 
	| montain |
	montain := MontainCase new.
	self assert: montain goldGain className equals: #Stone
]
