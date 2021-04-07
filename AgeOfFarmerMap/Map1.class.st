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
