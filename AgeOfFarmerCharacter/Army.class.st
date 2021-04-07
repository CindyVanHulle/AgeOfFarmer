Class {
	#name : #Army,
	#superclass : #TypeCharacter,
	#instVars : [
		'size'
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
	super initialize.
	size := 5.
	position := 0@0.
]

{ #category : #accessing }
Army >> position: anCase [
	self size <= anCase armySizeMax ifTrue: [ super position: anCase ]
	ifFalse: [ ArmyTooBigError new signal: 'your army is too big' ]
]

{ #category : #access }
Army >> size [
	^ size
]

{ #category : #access }
Army >> size: anInteger [ 
	size := anInteger
]
