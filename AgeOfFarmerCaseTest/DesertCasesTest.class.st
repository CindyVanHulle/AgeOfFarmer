Class {
	#name : #DesertCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
DesertCasesTest >> testGetArmySizeMax [
	| d |
	d := DesertCase new.
	self assert: (d armySizeMax  ) equals: 3.
]

{ #category : #tests }
DesertCasesTest >> testGetPoints [
	| d |
	d := DesertCase new.
	self assert: (d points ) equals: 4.
]

{ #category : #tests }
DesertCasesTest >> testHarvest [
	| desert |
	desert := DesertCase new.
	self assert: desert harvest className equals: #Sand
]
