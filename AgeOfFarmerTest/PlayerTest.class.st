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
PlayerTest >> testGetAndSetBoard [
	| player board |
	board := Board new.
	player := Player withBoard: board.
	self assert: player board className equals: #Board.
]

{ #category : #tests }
PlayerTest >> testGetCostGold [
	| player case list farmer|
	player := Player new.
	case := DesertCase new.
	player placeAFarmer: case.
	list := player listOfUnits.
	farmer := list at: 1 .
	self assert: farmer position costGold equals: -3.
]

{ #category : #tests }
PlayerTest >> testGetGoldStock [
	| player |
	player := Player new.
	self assert: player goldStock equals: 0
]

{ #category : #tests }
PlayerTest >> testGetNumberOfTerritory [
	| player |
	player := Player new.
	self assert: player numberOfTerritory equals: 0.
]

{ #category : #tests }
PlayerTest >> testGetNumberOfWarriors [
	| player |
	player := Player new.
	self assert: player numberOfWarriors equals: 35.
]

{ #category : #tests }
PlayerTest >> testGetScore [
	| player |
	player := Player new.
	self assert: player score equals: 0.
]

{ #category : #tests }
PlayerTest >> testGetUnitsOfFoods [
	| player |
	player := Player new.
	self assert: player unitsOfFoods equals: 10.
]

{ #category : #tests }
PlayerTest >> testListAtInitialization [
	| player |
	player := Player new.
	self assert: player listOfUnits isEmpty equals: true.
]

{ #category : #tests }
PlayerTest >> testMoveCharacter [
	| player case character |
	player := Player new.
	case := Case new.
	character := TypeCharacter new.
	player move: character at: case.
	self assert: character position className equals: #Case.
	self assert: case characterEnabled equals: true.
]

{ #category : #tests }
PlayerTest >> testPlaceAnArmyOnACase [
	| player case |
	player := Player new.
	case := Case new.
	self assert: case characterEnabled  equals: false.
	player placeAnArmy: case with: 2 .
	self assert: case characterEnabled  equals: true
]

{ #category : #tests }
PlayerTest >> testPlaceAnArmyOnACaseSubtractTheGoodNumberOfWariors [
	| player case |
	player := Player new.
	case := Case new.
	self assert: player numberOfWarriors  equals: 35.
	player placeAnArmy: case with: 5.
	self assert: player numberOfWarriors  equals: 30
]

{ #category : #tests }
PlayerTest >> testPlaceAnFarmerOnACase [
	| player case |
	player := Player new.
	case := Case new.
	self assert: case characterEnabled  equals: false.
	player placeAFarmer: case.
	self assert: case characterEnabled  equals: true
]

{ #category : #tests }
PlayerTest >> testPutArmyOnListOfUnits [
	| player case list size|
	player := Player new.
	case := Case new.
	player placeAnArmy: case with: 5.
	list := player listOfUnits.
	size := list size.
	self assert: (list at: size) className  equals: #Army.
]
