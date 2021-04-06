Class {
	#name : #DesertCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
DesertCasesTest >> testGetArmySize [
	| d army|
	army := Army new.
	d := DesertCase new.
	d setCharacter: army .
	self assert: (d getArmySize  ) equals: 5.
]

{ #category : #tests }
DesertCasesTest >> testGetArmySizeMax [
	| d |
	d := DesertCase new.
	self assert: (d getArmySizeMax  ) equals: 3.
]

{ #category : #tests }
DesertCasesTest >> testGetPoints [
	| d |
	d := DesertCase new.
	self assert: (d getPoints ) equals: 4.
]
