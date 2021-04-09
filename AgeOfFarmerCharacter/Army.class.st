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

]

{ #category : #accessing }
Army >> position: aCase [
	self size <= aCase armySizeMax ifTrue: [ super position: aCase ]
	ifFalse: [ ArmyTooBigError new signal: 'your army is too big' ]
]

{ #category : #printing }
Army >> printOn: aStream [
	aStream nextPutAll: 'Army'.
]

{ #category : #access }
Army >> size [
	^ size
]

{ #category : #access }
Army >> size: anInteger [ 
	anInteger > 5 ifTrue: [ size := 5 ].
	size := anInteger
]
