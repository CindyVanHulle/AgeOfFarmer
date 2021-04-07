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
PlayerTest >> testGetUnitsOfFoods [
	| player |
	player := Player new.
	self assert: player unitsOfFoods equals: 10.
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
