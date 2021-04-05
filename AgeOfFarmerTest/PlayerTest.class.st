Class {
	#name : #PlayerTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
PlayerTest >> testDecrementGuerrier [
	| p |
	p := Player new.
	p decrementNbGuerrier.
	self assert: (p getNbGuerrier ) equals: 34
]

{ #category : #tests }
PlayerTest >> testDecrementGuerrierWith [
	| p |
	p := Player new.
	p decrementNbGuerrierOf: 20 .
	self assert: (p getNbGuerrier ) equals: 15
]

{ #category : #tests }
PlayerTest >> testDecrementNourriture [
	| p |
	p := Player new.
	p decrementNbNourriture.
	self assert: (p getNbNourriture ) equals: 9
]

{ #category : #tests }
PlayerTest >> testDecrementOr [
	| p |
	p := Player new.
	p decrementNbOr.
	self assert: (p getNbOr ) equals: 0
]

{ #category : #tests }
PlayerTest >> testDecrementTerritoire [
	| p |
	p := Player new.
	p decrementNbTerritoire .
	self assert: (p getNbTerritoire ) equals: 0
]

{ #category : #tests }
PlayerTest >> testGetGuerrier [
	| p |
	p := Player new.
	self assert: (p getNbGuerrier ) equals: 35
]

{ #category : #tests }
PlayerTest >> testGetNourriture [
	| p |
	p := Player new.
	self assert: (p getNbNourriture ) equals: 10
]

{ #category : #tests }
PlayerTest >> testGetOr [
	| p |
	p := Player new.
	self assert: (p getNbOr ) equals: 0
]

{ #category : #tests }
PlayerTest >> testGetTerritoire [
	| p |
	p := Player new.
	self assert: (p getNbTerritoire ) equals: 0
]

{ #category : #tests }
PlayerTest >> testIncrementGuerrier [
	| p |
	p := Player new.
	p incrementNbGuerrier.
	self assert: (p getNbGuerrier ) equals: 36
]

{ #category : #tests }
PlayerTest >> testIncrementGuerrierWith [
	| p |
	p := Player new.
	p incrementNbGuerrierOf: 20.
	self assert: (p getNbGuerrier ) equals: 55
]

{ #category : #tests }
PlayerTest >> testIncrementNourriture [
	| p |
	p := Player new.
	p incrementNbNourriture.
	self assert: (p getNbNourriture ) equals: 11
]

{ #category : #tests }
PlayerTest >> testIncrementOr [
	| p |
	p := Player new.
	p incrementNbOr.
	self assert: (p getNbOr ) equals: 1
]

{ #category : #tests }
PlayerTest >> testIncrementTerritoire [
	| p |
	p := Player new.
	p incrementNbTerritoire.
	self assert: (p getNbTerritoire ) equals: 1
]
