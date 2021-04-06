Class {
	#name : #CasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
CasesTest >> testGetAndSetCharacter [
	| c army |
	c := Cases new.
	army := Army new.
	c setCharacter: army .
	self assert: (c getCharacter ) equals: army 
]

{ #category : #tests }
CasesTest >> testGetPoints [
	| d m p w|
	d := DesertCase new.
	m := MontainCase new.
	p := PlainCase new.
	w := WoodCase new.
	self assert: (d getPoints ) equals: 4.
	self assert: m getPoints  equals: 4.
	self assert: p getPoints equals: 1.
	self assert: w getPoints equals: 2.
]

{ #category : #tests }
CasesTest >> testGetTailleArmy [
	| d m p w army|
	army := Army new.
	d := DesertCase new.
	d setCharacter: army .
	m := MontainCase new.
	m setCharacter: army .
	p := PlainCase new.
	p setCharacter: army .
	w := WoodCase new.
	w setCharacter: army .
	self assert: (d getTailleArmy  ) equals: 5.
	self assert: m getTailleArmy  equals: 7.
	self assert: p getTailleArmy equals: 5.
	self assert: w getTailleArmy equals: 5.
]

{ #category : #tests }
CasesTest >> testGetTailleArmyMax [
	| d m p w|
	d := DesertCase new.
	m := MontainCase new.
	p := PlainCase new.
	w := WoodCase new.
	self assert: (d getTailleArmyMax  ) equals: 3.
	self assert: m getTailleArmyMax  equals: 3.
	self assert: p getTailleArmyMax equals: 5.
	self assert: w getTailleArmyMax equals: 5.
]
