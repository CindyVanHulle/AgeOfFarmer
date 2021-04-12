"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestAgeOfFarmer,
	#superclass : #PackageManifest,
	#category : #'AgeOfFarmer-Manifest'
}

{ #category : #'code-critics' }
ManifestAgeOfFarmer class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Player #displayARound #false)) #'2021-04-09T17:54:55.020599+02:00') )
]
