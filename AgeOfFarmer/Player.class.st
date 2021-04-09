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

{ #category : #comparing }
Player >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ woodStock = anObject woodStock and: [ 
		  wheatStock = anObject wheatStock and: [ 
			  unitsOfFoods = anObject unitsOfFoods and: [ 
				  stoneStock = anObject stoneStock and: [ 
					  score = anObject score and: [ 
						  sandStock = anObject sandStock and: [ 
							  numberOfWarriors = anObject numberOfWarriors and: [ 
								  numberOfTerritory = anObject numberOfTerritory and: [ 
									  listOfUnits = anObject listOfUnits and: [ 
										  goldStock = anObject goldStock ] ] ] ] ] ] ] ] ]
]

{ #category : #moves }
Player >> actionArmy [
	| positionArmy case explore size | 
	positionArmy := self askSomethingToPlayer: 'position x,y,size'.
	positionArmy := ',' split: positionArmy.
	size := (positionArmy at: 3) asInteger.	
		
	explore := ((board at: (positionArmy at:1) asInteger - 1) at: (positionArmy at:2) asInteger).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "SUD" 
	
	explore := ((board at: (positionArmy at:1) asInteger + 1) at: (positionArmy at:2) asInteger).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "NORD"
	
	explore := ((board at: (positionArmy at:1) asInteger) at: (positionArmy at:2) asInteger + 1).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "OUEST"
	
	explore := ((board at: (positionArmy at:1) asInteger) at: (positionArmy at:2) asInteger - 1).
	explore characterEnabled ifTrue: [ self whoIsOnTheCase: explore with: size ]. "EST"
	
	case := (board at: (positionArmy at:1) asInteger) at: (positionArmy at:2) asInteger.
	self placeAnArmy: case with: (positionArmy at: 3) asInteger.
]

{ #category : #access }
Player >> actionFarmer [
	| positionFarmer case | 
	positionFarmer := self askSomethingToPlayer: 'position x,y'.
	positionFarmer := ',' split: positionFarmer.  
	case := (board at: (positionFarmer at:1) asInteger) at: (positionFarmer at:2) asInteger.
	self placeAFarmer: case.
]

{ #category : #adding }
Player >> addGold: aQuantity [
	goldStock := goldStock + aQuantity.
]

{ #category : #adding }
Player >> addSand: aQuantity [
	sandStock := sandStock + aQuantity.
]

{ #category : #adding }
Player >> addStone: aQuantity [ 
	stoneStock := stoneStock + aQuantity.
]

{ #category : #adding }
Player >> addWheat: aQuantity [
	wheatStock := wheatStock + aQuantity.
]

{ #category : #adding }
Player >> addWood: aQuantity [ 
	woodStock := woodStock + aQuantity.
]

{ #category : #moves }
Player >> armyAllies: aSize [
	"Allons boire un petit coup et faisons la fete"
	
	
]

{ #category : #moves }
Player >> armyAllies: aSize on: aCase [
	"Allons boire un petit coup et faisons la fete"
	"size taille de l'armee que tu viens de placer"
	| character |
	character := (aCase character).
	aSize < character size ifTrue: 
	[ character size <5 ifTrue: [character size + 1  ]]
	 ifFalse: [ "Nothing" ]
	
	
]

{ #category : #'as yet unclassified' }
Player >> armyEnemies: aSize against: aCase [
	| enemies |
	enemies := aCase character.
	enemies armySize < 1 ifTrue: [ enemies player: self. enemies size: 1 ].
	enemies armySize < aSize ifTrue: [ enemies size: (enemies size / 2) ].

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

{ #category : #comparing }
Player >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^ woodStock hash bitXor:
		  (wheatStock hash bitXor: (unitsOfFoods hash bitXor:
				    (stoneStock hash bitXor:
					     (score hash bitXor: (sandStock hash bitXor:
							       (numberOfWarriors hash bitXor:
								        (numberOfTerritory hash bitXor:
									         (listOfUnits hash bitXor: goldStock hash))))))))
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
Player >> placeAFarmer: aCase [
	Farmer new position: aCase.

	
	
]

{ #category : #moves }
Player >> placeAnArmy: aCase with: aSize [
	| army |
	army := (Army withArmySize: aSize).
	army player: self.
	army position: aCase.
	aCase character: army.
	numberOfWarriors := numberOfWarriors - aSize.
	listOfUnits add: army .
	
	
	
]

{ #category : #access }
Player >> playARound [
	| action |
	" Player need to play "
	action := self askSomethingToPlayer: 'Army or Farmer or Nothing'.
	action = 'Army' ifTrue: [ self actionArmy].
	action = 'Farmer' ifTrue: [ self actionFarmer ].
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

{ #category : #'as yet unclassified' }
Player >> whoIsOnTheCase: aCase with: aSize [
	self = (aCase character player) 
		ifTrue: [ self armyAllies: aSize ]
		ifFalse: [ self armyEnemies: aSize against: aCase ]
]

{ #category : #access }
Player >> woodStock [
	^ woodStock
]
