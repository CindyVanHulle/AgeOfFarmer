Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'goldStock',
		'woodStock',
		'wheatStock',
		'sandStock',
		'stoneStock',
		'numberOfWarriors',
		'unitsOfFoods',
		'numberOfTerritory',
		'score',
		'listOfUnits',
		'board'
	],
	#category : #AgeOfFarmer
}

{ #category : #'as yet unclassified' }
Player class >> withBoard: aBoard [ 
	^ self new board: aBoard 
]

{ #category : #access }
Player >> actionArmy [
	| positionArmy case | 
	positionArmy := self askSomethingToPlayer: 'position x,y,size'.
	positionArmy := ',' split: positionArmy.  
	case := (board at: (positionArmy at:1) asInteger) at: (positionArmy at:2) asInteger.
	self placeAnArmy: case with: (positionArmy at: 3) asInteger.
]

{ #category : #adding }
Player >> addGold: anQuantity [
	goldStock := goldStock + anQuantity.
]

{ #category : #adding }
Player >> addSand: anQuantity [
	sandStock := sandStock + anQuantity.
]

{ #category : #adding }
Player >> addStone: anQuantity [ 
	stoneStock := stoneStock + anQuantity.
]

{ #category : #adding }
Player >> addWheat: anQuantity [
	wheatStock := wheatStock + anQuantity.
]

{ #category : #adding }
Player >> addWood: anQuantity [ 
	woodStock := woodStock + anQuantity.
]

{ #category : #access }
Player >> askSomethingToPlayer: aStream [
	| action |
	action := UIManager default request: aStream .
	^ action
]

{ #category : #access }
Player >> board [
	^ board
]

{ #category : #creating }
Player >> board: aBoard [ 
	board := aBoard
]

{ #category : #access }
Player >> goldStock [
	^ goldStock
]

{ #category : #initialization }
Player >> initialize [

	goldStock := 0.
	woodStock := 0.
	wheatStock := 0.
	stoneStock := 0.
	sandStock := 0.
	numberOfWarriors := 35.
	unitsOfFoods := 10.
	numberOfTerritory := 0.
	score := 0.
	listOfUnits := LinkedList new.
]

{ #category : #access }
Player >> listOfUnits [
	^ listOfUnits
]

{ #category : #moves }
Player >> move: aCharacter at: aCases [ 
	aCharacter position: aCases.
]

{ #category : #access }
Player >> numberOfTerritory [
	^ numberOfTerritory
]

{ #category : #access }
Player >> numberOfWarriors [
	^ numberOfWarriors.
]

{ #category : #moves }
Player >> placeAFarmer: anCase [
	Farmer new position: anCase.

	
	
]

{ #category : #moves }
Player >> placeAnArmy: anCase with: anSize [
	| army |
	army := (Army withArmySize: anSize).
	army position: anCase.
	numberOfWarriors := numberOfWarriors - anSize.
	listOfUnits add: army .
	
	
	
]

{ #category : #access }
Player >> playARound [
	| action |
	" Player need to play "
	action := self askSomethingToPlayer: 'Army or Farmer or Nothing'.
	action = 'Army' ifTrue: [ self actionArmy]
	"Recolte ressource of all army"
	"Nourrissage des armées"
	
	
]

{ #category : #access }
Player >> sandStock [
	^ sandStock
]

{ #category : #access }
Player >> score [
	^ score
]

{ #category : #access }
Player >> stoneStock [
	^ stoneStock
]

{ #category : #access }
Player >> unitsOfFoods [
	^ unitsOfFoods.
]

{ #category : #access }
Player >> wheatStock [
	^ wheatStock
]

{ #category : #access }
Player >> woodStock [
	^ woodStock
]
