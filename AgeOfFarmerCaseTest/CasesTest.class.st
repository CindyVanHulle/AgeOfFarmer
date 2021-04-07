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
	c character: army .
	self assert: (c character ) equals: army 
]

{ #category : #tests }
CasesTest >> testGetAndSetRessource [
	| case ressource |
	case := Cases new.
	ressource := Wood new.
	case ressource: ressource.
	self assert: case ressource equals: ressource.
]

{ #category : #tests }
CasesTest >> testGetArmySizeMax [
	| d m p w|
	d := DesertCase new.
	m := MontainCase new.
	p := PlainCase new.
	w := ForestCase new.
	self assert: (d armySizeMax  ) equals: 3.
	self assert: m armySizeMax  equals: 3.
	self assert: p armySizeMax equals: 5.
	self assert: w armySizeMax equals: 5.
]

{ #category : #tests }
CasesTest >> testGetPoints [
	| d m p w|
	d := DesertCase new.
	m := MontainCase new.
	p := PlainCase new.
	w := ForestCase new.
	self assert: (d points ) equals: 4.
	self assert: m points  equals: 4.
	self assert: p points equals: 1.
	self assert: w points equals: 2.
]
