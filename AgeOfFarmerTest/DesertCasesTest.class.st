Class {
	#name : #DesertCasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
DesertCasesTest >> testGetPoints [
	| d |
	d := DesertCase new.
	self assert: (d getPoints ) equals: 4.
]

{ #category : #tests }
DesertCasesTest >> testGetTailleArmy [
	| d army|
	army := Army new.
	d := DesertCase new.
	d setCharacter: army .
	self assert: (d getTailleArmy  ) equals: 5.
]

{ #category : #tests }
DesertCasesTest >> testGetTailleArmyMax [
	| d |
	d := DesertCase new.
	self assert: (d getTailleArmyMax  ) equals: 3.
]
