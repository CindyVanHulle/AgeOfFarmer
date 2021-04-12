Class {
	#name : #OceanCase,
	#superclass : #Case,
	#category : #AgeOfFarmerCase
}

{ #category : #acccessing }
OceanCase >> initialize [ 
	super initialize 
]

{ #category : #setter }
OceanCase >> position: aCase [
	Transcript show: 'Your units risk to drown';cr.
]
