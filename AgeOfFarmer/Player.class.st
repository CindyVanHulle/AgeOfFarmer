"
The class `Player` represent a player in the AgeOfFarmer Game. A player is represented by a goldStock, a listOfUnits, a numberOfTerritory, numberOfWarrios, a unitsOfFoods, a score and a board.

## Instance Variables

- board:  Array2d
- goldStock:  Integer
- listOfUnits:  LinkedList of character
- numberOfTerritory:  Integer
- numberOfWarriors:  Integer
- score:  Interger
- unitsOfFoods:  Integer

## Initializations
The method in initialization allow to create a plyer to begin a game of AgeOfFarmer
- `Player>>#initialize`

## Getter
You have a getter for all intances variables of Player.
- `Player>>#goldStock`
- `Player>>#unitsOfFoods`
- `Player>>#numberOfWarriors`
- `Player>>#numberOfTerritory`
- `Player>>#listOfUnits`
- `Player>>#score`
- `Player>>#board`

## Setter
You can just set the player's board
- `Player>>#board:`

## Adding

## Comparing

## Moves

## Playing

## Display

## Inout events




Implementation Points

"
Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'goldStock',
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

{ #category : #comparing }
Player >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ unitsOfFoods = anObject unitsOfFoods and: [ 
		  score = anObject score and: [ 
			  numberOfWarriors = anObject numberOfWarriors and: [ 
				  numberOfTerritory = anObject numberOfTerritory and: [ 
					  listOfUnits = anObject listOfUnits and: [ 
						  board = anObject board and: [ goldStock = anObject goldStock ] ] ] ] ] ]
]

{ #category : #moves }
Player >> actionArmy [
	| positionArmy case explore size | 
	positionArmy := self askSomethingToPlayer: 'position x,y,size'.
	positionArmy := ',' split: positionArmy.
	size := (positionArmy at: 3) asInteger.	
	
	case := (board at: (positionArmy at:1) asInteger) at: (positionArmy at:2) asInteger.
	case characterEnabled ifTrue: [ Transcript show: 'la case est déjà occupé petit malin';cr ] ifFalse: [ 
	
	explore := ((board at: (((positionArmy at:1) asInteger - 1) max: 1)) at: (positionArmy at:2) asInteger).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "SUD" 
	
	explore := ((board at: (positionArmy at:1) asInteger + 1) at: (positionArmy at:2) asInteger).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "NORD"
	
	explore := ((board at: (positionArmy at:1) asInteger) at: (positionArmy at:2) asInteger + 1).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "OUEST"
	
	explore := ((board at: (positionArmy at:1) asInteger) at: (((positionArmy at:2) asInteger - 1)max: 1)).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "EST"
	
	
	self placeAnArmy: case with: (positionArmy at: 3) asInteger.
	].
]

{ #category : #moves }
Player >> actionFarmer [
	| positionFarmer case | 
	positionFarmer := self askSomethingToPlayer: 'position x,y'.
	positionFarmer := ',' split: positionFarmer.  
	case := (board at: (positionFarmer at:1) asInteger) at: (positionFarmer at:2) asInteger.
	case characterEnabled ifTrue: 
	[ Transcript show: 'The case is already use'; cr ] ifFalse: [ 
	self placeAFarmer: case.
	]
]

{ #category : #adding }
Player >> addGold: aQuantity [
	goldStock := goldStock + aQuantity.
]

{ #category : #adding }
Player >> addUnitsOfFood: anInteger [
	unitsOfFoods := unitsOfFoods + anInteger 
]

{ #category : #moves }
Player >> armyAllies: aSize on: aCase [
	"Allons boire un petit coup et faisons la fete"
	"size taille de l'armee que tu viens de placer"
	| character |
	character := (aCase character).
	(aSize < character size) & (character size < 5) ifTrue: 
	[ character size + 1  ]
	
	
]

{ #category : #moves }
Player >> armyEnemies: aSize against: aCase [
	| enemies |
	enemies := aCase character.
	enemies armySize < 1 ifTrue: [ enemies player: self. enemies size: 1 ].
	enemies armySize < aSize ifTrue: [ enemies size: (enemies size / 2) ].

]

{ #category : #'input events' }
Player >> askSomethingToPlayer: aStream [
	| action |
	action := UIManager default request: aStream .
	^ action
]

{ #category : #getter }
Player >> board [
	^ board
]

{ #category : #setter }
Player >> board: aBoard [ 
	board := aBoard
]

{ #category : #display }
Player >> displayABoard [

	board do: [ :each | 
		each do: [ :case | Transcript show: case ].
		Transcript
			show: '';
			cr ].
	Transcript show: ' ';cr.
]

{ #category : #display }
Player >> displayARound [

	board do: [ :each | 
		each do: [ :case | Transcript show: case ].
		Transcript
			show: '';
			cr ]
]

{ #category : #display }
Player >> displayLine: aLine [

	aLine do: [ :each | Transcript show: each ]
]

{ #category : #moves }
Player >> goldGain [
	listOfUnits do: [ :each | each className = #Army ifTrue: 
		[ self addGold: each position goldGain ] 
	ifFalse: [ goldStock <= 0 ifTrue: [ listOfUnits remove: each ] ifFalse: [ self addGold: each position costGold ]]].

	
	
]

{ #category : #getter }
Player >> goldStock [
	^ goldStock
]

{ #category : #moves }
Player >> harvest [
	listOfUnits do: [ :each | each className = #Army  ifTrue: 
		[unitsOfFoods <= 0 ifTrue: [ listOfUnits remove: each ] ifFalse: [ self removeUnitsOfFood: each costFood ] ]
	ifFalse: [self addUnitsOfFood: each position harvest ]].
	
	
]

{ #category : #comparing }
Player >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ unitsOfFoods hash bitXor: (score hash bitXor:
			   (numberOfWarriors hash bitXor: (numberOfTerritory hash bitXor:
					     (listOfUnits hash bitXor:
						      (board hash bitXor: goldStock hash)))))
]

{ #category : #initialization }
Player >> initialize [

	goldStock := 0.
	numberOfWarriors := 35.
	unitsOfFoods := 10.
	numberOfTerritory := 0.
	score := 0.
	listOfUnits := LinkedList new.
]

{ #category : #getter }
Player >> listOfUnits [
	^ listOfUnits
]

{ #category : #moves }
Player >> move: aCharacter at: aCases [ 
	aCharacter position: aCases.
]

{ #category : #getter }
Player >> numberOfTerritory [
	^ numberOfTerritory
]

{ #category : #getter }
Player >> numberOfWarriors [
	^ numberOfWarriors.
]

{ #category : #moves }
Player >> placeAFarmer: aCase [
	| farmer |
	aCase className = #OceanCase ifTrue: [  ] ifFalse: [ farmer := Farmer new position: aCase.
	listOfUnits add: farmer .
	Transcript show: 'Your farmer placed';cr.
	Transcript show: 'gold : ' , goldStock asString,' | food : ', unitsOfFoods asString , ' | warrior : ' , numberOfWarriors asString , ' | territory : ' , numberOfTerritory asString ;cr. ]
	
	

	
	
]

{ #category : #moves }
Player >> placeAnArmy: aCase with: aSize [
	| army |
	aCase className = #OceanCase ifTrue: [ Transcript show: 'your unit risk to drown';cr;cr ] ifFalse: [ army := (Army withArmySize: aSize).
	army player: self.
	army position: aCase.
	aCase character: army.
	numberOfWarriors := numberOfWarriors - aSize.
	numberOfTerritory := numberOfTerritory + 1.
	listOfUnits add: army .
	Transcript show: 'Your army placed ';cr.
	Transcript show: 'gold : ' , goldStock asString,' | food : ', unitsOfFoods asString , ' | warrior : ' , numberOfWarriors asString , ' | territory : ' , numberOfTerritory asString ;cr. ]
	
	
	
	
]

{ #category : #playing }
Player >> playARound [
	| action |
	action := 'Army'.
	self harvest.
	self goldGain.	
	Transcript show: 'The harvest was done'; cr.
	Transcript show: 'gold : ' , goldStock asString,' | food : ', unitsOfFoods asString , ' | warrior : ' , numberOfWarriors asString , ' | territory : ' , numberOfTerritory asString ;cr.
	self displayABoard .
	[action = 'Army' or: action = 'Farmer' ] whileTrue: [ 
	action:= self askSomethingToPlayer: 'Choose between Army,Farmer or Nothing'.
	action = 'Army' ifTrue: [ self actionArmy].
	action = 'Farmer' ifTrue: [ self actionFarmer ]. ]
	

	
	
]

{ #category : #adding }
Player >> removeGold: anInteger [
	goldStock  := goldStock - anInteger 
]

{ #category : #adding }
Player >> removeUnitsOfFood: anInteger [
	unitsOfFoods := unitsOfFoods - anInteger 
]

{ #category : #getter }
Player >> score [
	^ score
]

{ #category : #getter }
Player >> unitsOfFoods [
	^ unitsOfFoods.
]

{ #category : #moves }
Player >> whoIsOnTheCase: aCase with: aSize [
	| character |
	character := aCase character.
	character className = #Farmer 
	ifFalse: [ self = (character player) 
		ifTrue: [ self armyAllies: aSize on: aCase ]
		ifFalse: [ self armyEnemies: aSize against: aCase ] ]
	
]
