Class {
	#name : #Map1,
	#superclass : #Object,
	#category : #AgeOfFarmerMap
}

{ #category : #creation }
Map1 >> createMap1 [
	| board line |
	board := Array new: 6.
	line := Array  withAll: { OceanCases new . OceanCases new . OceanCases new . OceanCases new . OceanCases new . OceanCases new . OceanCases new }.
	board at: 1 put: line;
	at: 6 put: line.
	line := Array  withAll: { OceanCases new . PlainCase  new . MontainCase new .  DesertCase  new . ForestCase  new . PlainCase  new . OceanCases new }.
	board at: 2 put: line;
	at: 3 put: line;
	at: 4 put: line;
	at: 5 put: line.
	^ board
]

{ #category : #creation }
Map1 >> createMap2 [
	| board |
	board :=Array2D rows: 6 columns: 7.
	board indicesCollect: [ :i :j | self newOceanCellAt: i at: j  ].
	^ board
]

{ #category : #creation }
Map1 >> newOceanCellAt: x at: y [
	| c |
	c := OceanCases new.
	c position: x @ y.
	^ c
]
