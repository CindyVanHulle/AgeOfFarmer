Class {
	#name : #CaseTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCaseTest
}

{ #category : #tests }
CaseTest >> testCharacterEnabledOff [
	| case |
	case := Case new.
	case characterEnabledOff.
	self assert: case characterEnabled equals: false
]

{ #category : #tests }
CaseTest >> testCharacterEnabledOn [
	| case |
	case := Case new.
	case characterEnabledOn.
	self assert: case characterEnabled equals: true
]

{ #category : #tests }
CaseTest >> testGetAndSetPlayer [
	| player case |
	player := Player new.
	case := Case new.
	case player: player.
	self assert: case player className equals: #Player.
]

{ #category : #tests }
CaseTest >> testGetAndSetRessource [
	| case ressource |
	case := Case new.
	ressource := Wood new.
	case ressource: ressource.
	self assert: case ressource equals: ressource.
]

{ #category : #tests }
CaseTest >> testGetArmySizeMax [
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
CaseTest >> testGetPoints [
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

{ #category : #tests }
CaseTest >> testGetPosition [ 
	| c |
	c := Case new.
	c position: 4@2.
	self assert: c position equals: 4@2
]
