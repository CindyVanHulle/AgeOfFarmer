Class {
	#name : #ArmyTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
ArmyTest >> testGetPosition [
	| army |
	army := Army new.
	self assert: army position className equals: #Cases.
]

{ #category : #tests }
ArmyTest >> testInitializeWithASizeArmy [
	| army |
	army := Army withArmySize: 52.
	self assert: army size equals: 52.
]

{ #category : #tests }
ArmyTest >> testSetArmySuperiorAt3OnDesert [
	| desert army |
	desert := MontainCase new.
	army := Army new.
	self should: [ army position: desert] raise: ArmyTooBigError
]

{ #category : #tests }
ArmyTest >> testSetArmySuperiorAt3OnMontain [
	| montain army |
	montain := MontainCase new.
	army := Army new.
	self should: [ army position: montain] raise: ArmyTooBigError
]

{ #category : #tests }
ArmyTest >> testSetPosition [
	| army case |
	army := Army new.
	case := Cases new.
	army position: case.
	self assert: army position className equals: #Cases.
]

{ #category : #tests }
ArmyTest >> testSetSize [
	| army |
	army := Army new.
	self assert: army size equals: 5.
	army size: 18.
	self assert: (army size) equals: 18
]
