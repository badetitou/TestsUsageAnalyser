"
Contains tools to control the project

To start the project.
1- Go to your privacy setting and check the case box ""Send diagnostics and usage data...""
2- Run in a playground ""TestsUsageAnalyser enable.""
3- Work as always and don't think about it
"
Class {
	#name : #TUATestUsageAnalyser,
	#superclass : #Object,
	#classInstVars : [
		'enabled',
		'tuaCodeDetectionListener',
		'tuaTestDetectionListener'
	],
	#category : 'TestsUsageAnalyser-Core'
}

{ #category : #actions }
TUATestUsageAnalyser class >> disable [
	self tuaCodeDetectionListener disable.
	self tuaTestDetectionListener disable.
	GTEventRecorder uniqueInstance removeCollector: TUAEventCollector uniqueInstance
	
]

{ #category : #actions }
TUATestUsageAnalyser class >> enable [
	self tuaCodeDetectionListener enable.
	self tuaTestDetectionListener enable.
	TUAEventCollector initialize.
	GTEventRecorder uniqueInstance addCollector: TUAEventCollector uniqueInstance.
]

{ #category : #actions }
TUATestUsageAnalyser class >> enabled [
	^ enabled ifNil: [ enabled := true ]
]

{ #category : #actions }
TUATestUsageAnalyser class >> enabled: anObject [
	enabled := anObject.
	enabled
		ifFalse: [ self disable ]
		ifTrue: [ self enable ]
]

{ #category : #actions }
TUATestUsageAnalyser class >> enabledSettingOn: aBuilder [
	<systemsettings>
	
	(aBuilder setting: #enabled)
		parent: #pharoSystem ;
		target: self;
		label: 'Test Usage Analyser' ;
		description: 'Enable or disable TUATestUsageAnalyser.'
	
]

{ #category : #initialization }
TUATestUsageAnalyser class >> initialize [
	self enabled: (Smalltalk version = 'Pharo6.0').
	[ Smalltalk addToStartUpList: self ]
		on: Deprecation
		do: [  ]
]

{ #category : #initialization }
TUATestUsageAnalyser class >> startUp [
	SessionManager default
		addDeferredStartupAction: [ NetNameResolver isConnected
				ifTrue: [ ZnConnectionTimeout
						value: 3
						during: [ [ Metacello new
								smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo60';
								configuration: 'TestsUsageAnalyser';
								version: #stable;
								get;
								load ]
								on: MetacelloPackageSpecResolutionError
								do: [  ] ] ] ]
]

{ #category : #actions }
TUATestUsageAnalyser class >> testCaseFailled: aTestResult [
	self tuaTestDetectionListener testCaseFailled: aTestResult
]

{ #category : #actions }
TUATestUsageAnalyser class >> testCaseRaiseError: aTestResult [
	self tuaTestDetectionListener testCaseRaiseError: aTestResult
]

{ #category : #actions }
TUATestUsageAnalyser class >> testCaseRaiseHalt: aTestResult [
	self tuaTestDetectionListener 	testCaseRaiseHalt: aTestResult
]

{ #category : #actions }
TUATestUsageAnalyser class >> testCaseSkipped: aTestResult [
	self tuaTestDetectionListener testCaseSkipped: aTestResult
]

{ #category : #actions }
TUATestUsageAnalyser class >> tuaCodeDetectionListener [
	^ tuaCodeDetectionListener ifNil: [ tuaCodeDetectionListener := TUACodeChangeDetectionListener new ]
]

{ #category : #actions }
TUATestUsageAnalyser class >> tuaTestDetectionListener [
	^ tuaTestDetectionListener ifNil: [ tuaTestDetectionListener := TUATestsDetectionListener new ]
]
