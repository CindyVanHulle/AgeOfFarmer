Class {
	#name : #RessourceTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
RessourceTest >> testGetNourriture [
	| w b s r |
	w := Wood new.
	b := Ble new.
	r := Ressource  new.
	self assert: w getNourriture equals: 1.
	self assert: b getNourriture equals: 5.
	self assert: r getNourriture equals: 0.
]
