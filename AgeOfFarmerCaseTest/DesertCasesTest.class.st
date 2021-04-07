Class {
	#name : #DesertCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
DesertCasesTest >> testGetArmySize [
	| d army|
	army := Army withArmySize: 3.
	d := DesertCase new.
	d character: army .
	self assert: (d armySize  ) equals: 3.
]

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

{ #category : #tests }
DesertCasesTest >> testSetArmySuperiorAt3 [
	| desert army |
	desert := DesertCase new.
	army := Army new.
	self should: [ desert character: army ] raise: ArmyTooBigError
]
