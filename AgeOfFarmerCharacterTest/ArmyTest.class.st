Class {
	#name : #ArmyTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
ArmyTest >> testGetPosition [
	| army |
	army := Army new.
	self assert: army position equals: 0@0.
]

{ #category : #tests }
ArmyTest >> testInitializeWithASizeArmy [
	| army |
	army := Army withArmySize: 52.
	self assert: army size equals: 52.
]

{ #category : #tests }
ArmyTest >> testSetPosition [
	| army |
	army := Army new.
	army position: 5@6.
	self assert: army position equals: 5@6.
]

{ #category : #tests }
ArmyTest >> testSetSize [
	| army |
	army := Army new.
	self assert: army size equals: 5.
	army size: 18.
	self assert: (army size) equals: 18
]
