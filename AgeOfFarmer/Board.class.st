Class {
	#name : #Board,
	#superclass : #Object,
	#instVars : [
		'board'
	],
	#category : #AgeOfFarmer
}

{ #category : #acccessing }
Board >> addCase: aCases [
	board add: aCases 
]

{ #category : #acccessing }
Board >> boardSize [
	^ board size
]

{ #category : #acccessing }
Board >> getBoard [
	^ board
]

{ #category : #acccessing }
Board >> getElementAt: anInteger [
	^ board at: anInteger
]

{ #category : #acccessing }
Board >> initialize [ 
	super initialize .
	board := Array new.
]

{ #category : #acccessing }
Board >> setBoard [
	board := Map1 createMap1.
	
]
