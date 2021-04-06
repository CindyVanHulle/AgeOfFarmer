Class {
	#name : #CasesTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
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
CasesTest >> testGetAndSetRessource [
	| case ressource |
	case := Cases new.
	ressource := Wood new.
	case setRessource: ressource.
	self assert: case getRessource equals: ressource.
]

{ #category : #tests }
CasesTest >> testGetArmySizeMax [
	| d m p w|
	d := DesertCase new.
	m := MontainCase new.
	p := PlainCase new.
	w := ForestCase new.
	self assert: (d getArmySizeMax  ) equals: 3.
	self assert: m getArmySizeMax  equals: 3.
	self assert: p getArmySizeMax equals: 5.
	self assert: w getArmySizeMax equals: 5.
]

{ #category : #tests }
CasesTest >> testGetPoints [
	| d m p w|
	d := DesertCase new.
	m := MontainCase new.
	p := PlainCase new.
	w := ForestCase new.
	self assert: (d getPoints ) equals: 4.
	self assert: m getPoints  equals: 4.
	self assert: p getPoints equals: 1.
	self assert: w getPoints equals: 2.
]
