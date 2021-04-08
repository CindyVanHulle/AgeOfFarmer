Class {
	#name : #PlainCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
PlainCasesTest >> testGetArmySizeMax [
	| p |
	p := PlainCase new.
	self assert: p armySizeMax equals: 5.
]

{ #category : #tests }
PlainCasesTest >> testGetPoints [
	| p |
	p := PlainCase new.
	self assert: p points equals: 1.
]

{ #category : #tests }
PlainCasesTest >> testHarvest [ 
	| plain |
	plain := PlainCase new.
	self assert: plain harvest className equals: #Wheat
]
