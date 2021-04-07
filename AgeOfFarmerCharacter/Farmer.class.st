Class {
	#name : #Farmer,
	#superclass : #TypeCharacter,
	#instVars : [
		'position'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #initialization }
Farmer >> initialize [ 
	position:= 0@0.
]

{ #category : #'as yet unclassified' }
Farmer >> position [ 
	^ position.
]
