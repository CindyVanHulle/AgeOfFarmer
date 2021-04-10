Class {
	#name : #OceanCases,
	#superclass : #Cases,
	#category : #AgeOfFarmerCase
}

{ #category : #acccessing }
OceanCases >> initialize [ 
	super initialize 
]

{ #category : #setter }
OceanCases >> position: aCase [
	Transcript show: 'Your units risk to drown';cr.
]
