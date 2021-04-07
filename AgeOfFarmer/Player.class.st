Class {
	#name : #Player,
	#superclass : #Object,
	#instVars : [
		'gold',
		'territory',
		'warrior',
		'food'
	],
	#category : #AgeOfFarmer
}

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

	gold := 0.
	territory := 0.
	warrior := 35.
	food := 10
]
