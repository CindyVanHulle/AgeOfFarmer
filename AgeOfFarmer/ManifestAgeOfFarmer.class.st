"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestAgeOfFarmer,
	#superclass : #PackageManifest,
	#category : #'AgeOfFarmer-Manifest'
}

{ #category : #'code-critics' }
ManifestAgeOfFarmer class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Player #displayLine: #false)) #'2021-04-09T17:54:41.304891+02:00') #(#(#RGClassDefinition #(#Player)) #'2021-04-09T17:54:48.657979+02:00') )
]
