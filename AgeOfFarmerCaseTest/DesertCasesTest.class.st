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
	d setCharacter: army .
	self assert: (d getArmySize  ) equals: 3.
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

{ #category : #tests }
DesertCasesTest >> testSetArmySuperiorAt3 [
	| desert army |
	desert := DesertCase new.
	army := Army new.
	self should: [ desert setCharacter: army ] raise: ArmyTooBigError
]
