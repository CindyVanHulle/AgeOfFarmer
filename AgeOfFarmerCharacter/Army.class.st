Class {
	#name : #Army,
	#superclass : #TypeCharacter,
	#instVars : [
		'size',
		'position'
	],
	#classInstVars : [
		'position'
	],
	#category : #AgeOfFarmerCharacter
}

{ #category : #access }
Army class >> position [
	^ position.
]

{ #category : #creating }
Army class >> withArmySize: anInteger [ 
	^ self new size: anInteger
]

{ #category : #access }
Army >> costFood [
	^ size
]

{ #category : #access }
Army >> initialize [ 
	size := 5.
	position := 0@0.
]

{ #category : #access }
Army >> position [
	^ position
]

{ #category : #setter }
Army >> position: aPoint [
	position := aPoint 
]

{ #category : #access }
Army >> size [
	^ size
]

{ #category : #access }
Army >> size: anInteger [ 
	size := anInteger
]
