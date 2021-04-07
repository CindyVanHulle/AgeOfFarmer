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
		'unitsOfFoods'
	],
	#category : #AgeOfFarmer
}

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

{ #category : #initialization }
Player >> decrementFood [
	food <=0 ifTrue: [ food := 0] ifFalse: [food := food - 1].
	
]

{ #category : #initialization }
Player >> decrementGold [
	gold <=0 ifTrue: [ gold := 0] ifFalse: [gold:= gold - 1].
	
]

{ #category : #initialization }
Player >> decrementTerritory [
	territory <=0 ifTrue: [ territory := 0] ifFalse: [territory := territory - 1].
	
]

{ #category : #initialization }
Player >> decrementWarrior [
	warrior <=0 ifTrue: [ warrior := 0] ifFalse: [warrior := warrior - 1].
]

{ #category : #initialization }
Player >> decrementWarriorWith: anInteger [
	warrior - anInteger  <=0 ifTrue: [ warrior := 0] ifFalse: [warrior := warrior - anInteger ].
]

{ #category : #initialization }
Player >> getFood [
	^ food 
]

{ #category : #initialization }
Player >> getGold [
	^ gold  
]

{ #category : #initialization }
Player >> getTerritory [
	^ territory   
]

{ #category : #initialization }
Player >> getWarrior [
	^ warrior 
]

{ #category : #access }
Player >> goldStock [
	^ goldStock
]

{ #category : #initialization }
Player >> incrementFood [
	food   := food + 1
]

{ #category : #initialization }
Player >> incrementGold [
	gold := gold + 1
]

{ #category : #initialization }
Player >> incrementTerritory [
	territory  := territory + 1
]

{ #category : #initialization }
Player >> incrementWarrior [
	warrior  := warrior + 1
]

{ #category : #initialization }
Player >> incrementWarriorWith: anInteger [
	warrior  := warrior + anInteger
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
]

{ #category : #access }
Player >> numberOfWarriors [
	^ numberOfWarriors.
]

{ #category : #access }
Player >> sandStock [
	^ sandStock
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
