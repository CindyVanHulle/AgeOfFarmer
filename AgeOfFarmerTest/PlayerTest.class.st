Class {
	#name : #PlayerTest,
	#superclass : #TestCase,
	#category : #AgeOfFarmerTest
}

{ #category : #tests }
PlayerTest >> testAddGoldSotck [
	| player previousStock |
	player := Player new.
	previousStock := player goldStock.
	player addGold: 5.
	self assert: player goldStock equals: previousStock + 5.
]

{ #category : #tests }
PlayerTest >> testAddSandSotck [
	| player previousStock |
	player := Player new.
	previousStock := player sandStock.
	player addSand: 5.
	self assert: player sandStock equals: previousStock + 5.
]

{ #category : #tests }
PlayerTest >> testAddStoneSotck [
	| player previousStock |
	player := Player new.
	previousStock := player stoneStock.
	player addStone: 5.
	self assert: player stoneStock equals: previousStock + 5.
]

{ #category : #tests }
PlayerTest >> testAddWheatSotck [
	| player previousStock |
	player := Player new.
	previousStock := player wheatStock.
	player addWheat: 5.
	self assert: player wheatStock equals: previousStock + 5.
]

{ #category : #tests }
PlayerTest >> testAddWoodSotck [
	| player previousStock |
	player := Player new.
	previousStock := player woodStock.
	player addWood: 5.
	self assert: player woodStock equals: previousStock + 5.
]

{ #category : #tests }
PlayerTest >> testDecrementFood [
	| p |
	p := Player new.
	p decrementFood.
	self assert: (p getFood ) equals: 9
]

{ #category : #tests }
PlayerTest >> testDecrementFoodNotNegative [
	| p |
	p := Player new.
	self assert: (p getFood ) equals: 10.
	p decrementFood. p decrementFood. p decrementFood. p decrementFood. p decrementFood.
	p decrementFood. p decrementFood. p decrementFood. p decrementFood. p decrementFood.
	self assert: (p getFood ) equals: 0.
	p decrementFood.
	self assert: (p getFood ) equals: 0.
]

{ #category : #tests }
PlayerTest >> testDecrementGold [
	| p |
	p := Player new.
	p incrementGold.
	self assert: (p getGold ) equals: 1.
	p decrementGold.
	self assert: (p getGold ) equals: 0.
]

{ #category : #tests }
PlayerTest >> testDecrementGoldNotNegative [
	| p |
	p := Player new.
	self assert: (p getGold ) equals: 0.
	p decrementGold.
	self assert: (p getGold ) equals: 0.
]

{ #category : #tests }
PlayerTest >> testDecrementTerritory [
	| p |
	p := Player new.
	p incrementTerritory .
	self assert: (p getTerritory ) equals: 1.
	p decrementTerritory .
	self assert: (p getTerritory ) equals: 0
]

{ #category : #tests }
PlayerTest >> testDecrementTerritoryNotNegative [
	| p |
	p := Player new.
	self assert: (p getTerritory ) equals: 0.
	p decrementTerritory .
	self assert: (p getTerritory ) equals: 0
]

{ #category : #tests }
PlayerTest >> testDecrementWarrior [
	| p |
	p := Player new.
	self assert: (p getWarrior ) equals: 35.
	p decrementWarrior.
	self assert: (p getWarrior ) equals: 34
]

{ #category : #tests }
PlayerTest >> testDecrementWarriorNotNegative [
	| p |
	p := Player new.
	self assert: (p getWarrior ) equals: 35.
	p decrementWarriorWith: 35.
	self assert: (p getWarrior ) equals: 0.
	p decrementWarrior.
	self assert: (p getWarrior ) equals: 0
]

{ #category : #tests }
PlayerTest >> testDecrementWarriorWith [
	| p |
	p := Player new.
	p decrementWarriorWith: 20 .
	self assert: (p getWarrior ) equals: 15
]

{ #category : #tests }
PlayerTest >> testDecrementWarriorWithNotNegative [
	| p |
	p := Player new.
	self assert: (p getWarrior ) equals: 35.
	p decrementWarriorWith: 36 .
	self assert: (p getWarrior ) equals: 0
]

{ #category : #tests }
PlayerTest >> testGetFood [
	| p |
	p := Player new.
	self assert: (p getFood ) equals: 10
]

{ #category : #tests }
PlayerTest >> testGetGold [
	| p |
	p := Player new.
	self assert: (p getGold ) equals: 0
]

{ #category : #tests }
PlayerTest >> testGetGoldStock [
	| player |
	player := Player new.
	self assert: player goldStock equals: 0
]

{ #category : #tests }
PlayerTest >> testGetNumberOfWarriors [
	| player |
	player := Player new.
	self assert: player numberOfWarriors equals: 35.
]

{ #category : #tests }
PlayerTest >> testGetSandStock [
	| player |
	player := Player new.
	self assert: player sandStock equals: 0
]

{ #category : #tests }
PlayerTest >> testGetStoneStock [
	| player |
	player := Player new.
	self assert: player stoneStock equals: 0
]

{ #category : #tests }
PlayerTest >> testGetTerritory [
	| p |
	p := Player new.
	self assert: (p getTerritory ) equals: 0
]

{ #category : #tests }
PlayerTest >> testGetUnitsOfFoods [
	| player |
	player := Player new.
	self assert: player unitsOfFoods equals: 10.
]

{ #category : #tests }
PlayerTest >> testGetWarrior [
	| p |
	p := Player new.
	self assert: (p getWarrior ) equals: 35
]

{ #category : #tests }
PlayerTest >> testGetWheatStock [
	| player |
	player := Player new.
	self assert: player wheatStock equals: 0
]

{ #category : #tests }
PlayerTest >> testGetWoodStock [
	| player |
	player := Player new.
	self assert: player woodStock equals: 0
]

{ #category : #tests }
PlayerTest >> testIncrementFood [
	| p |
	p := Player new.
	p incrementFood.
	self assert: (p getFood ) equals: 11
]

{ #category : #tests }
PlayerTest >> testIncrementGold [
	| p |
	p := Player new.
	p incrementGold.
	self assert: (p getGold ) equals: 1
]

{ #category : #tests }
PlayerTest >> testIncrementTerritory [
	| p |
	p := Player new.
	p incrementTerritory.
	self assert: (p getTerritory ) equals: 1
]

{ #category : #tests }
PlayerTest >> testIncrementWarrior [
	| p |
	p := Player new.
	p incrementWarrior.
	self assert: (p getWarrior ) equals: 36
]

{ #category : #tests }
PlayerTest >> testIncrementWarriorWith [
	| p |
	p := Player new.
	p incrementWarriorWith: 20.
	self assert: (p getWarrior ) equals: 55
]
