Class {
	#name : #RessourceTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
RessourceTest >> testGetNourriture [
	| w b s r |
	w := Wood new.
	b := Wheat new.
	r := Ressource  new.
	self assert: w getFood equals: 1.
	self assert: b getFood equals: 5.
	self assert: r getFood equals: 0.
]
