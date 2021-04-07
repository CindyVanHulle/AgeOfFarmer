Class {
	#name : #ArmyTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerCharacterTest
}

{ #category : #tests }
ArmyTest >> testInitializeWithASizeArmy [
	| army |
	army := Army withArmySize: 52.
	self assert: army size equals: 52.
]

{ #category : #tests }
ArmyTest >> testSetSize [
	| army |
	army := Army new.
	self assert: army size equals: 5.
	army size: 18.
	self assert: (army size) equals: 18
]
