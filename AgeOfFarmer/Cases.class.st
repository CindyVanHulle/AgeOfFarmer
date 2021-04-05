Class {
	#name : #Cases,
	#superclass : #Object,
	#instVars : [
		'points'
	],
	#category : #AgeOfFarmer
}

{ #category : #acccessing }
Cases >> getPoints [

	^ points
]

{ #category : #acccessing }
Cases >> printOn: aStream [
	aStream nextPutAll: 'O'.
]
