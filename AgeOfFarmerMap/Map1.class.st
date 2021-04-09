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
	| board cell|
	board :=Array2D rows: 6 columns: 7.
	cell := board indicesCollect: [ :i :j | 
		((j =2 or: j = 6) and: (i between: 2 and: 6) ) 
		ifTrue: [ self newPlainCellAt: i at: j ] 
		ifFalse: [((i <= 1 or: 6<=i )and:(j between: 1 and: 7) ) ifTrue: [ self newOceanCellAt: i at: j  ] ifFalse: [ ((j=1 or: j=6)and:(i between: 1 and:7 ))ifTrue: [ self newOceanCellAt: i at: j ] ]
			]	 
		].

	^ cell
]

{ #category : #creation }
Map1 >> newDesertCellAt: x at: y [
	| c |
	c := DesertCase new.
	c position: x @ y.
	^ c
]

{ #category : #creation }
Map1 >> newForestCellAt: x at: y [
	| c |
	c := ForestCase  new.
	c position: x @ y.
	^ c
]

{ #category : #creation }
Map1 >> newMontainCellAt: x at: y [
	| c |
	c := MontainCase  new.
	c position: x @ y.
	^ c
]

{ #category : #creation }
Map1 >> newOceanCellAt: x at: y [
	| c |
	c := OceanCases new.
	c position: x @ y.
	^ c
]

{ #category : #creation }
Map1 >> newPlainCellAt: x at: y [
	| c |
	c := PlainCase new.
	c position: x @ y.
	^ c
]

{ #category : #creation }
Map1 >> oceanMap [
	| board cell |
	board :=Array2D rows: 6 columns: 7.
	cell := board indicesCollect: [ :i :j | self newOceanCellAt: i at: j  ].
	^ cell
]
