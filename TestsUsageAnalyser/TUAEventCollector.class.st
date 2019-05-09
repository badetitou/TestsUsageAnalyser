"
I log the usage data of TUA
"
Class {
	#name : #TUAEventCollector,
	#superclass : #GTEventCollector,
	#classInstVars : [
		'uniqueInstance',
		'dataVersion'
	],
	#category : 'TestsUsageAnalyser-Recording'
}

{ #category : #accessing }
TUAEventCollector class >> dataVersion [
	"Support of new element (without any commit)"

	^ dataVersion ifNil: [ 4.1 ]
]

{ #category : #action }
TUAEventCollector class >> eventCategory [
	^#testsUsageAnalyserEvents
]

{ #category : #'class initialization' }
TUAEventCollector class >> initialize [
	Privacy sendDiagnosticsAndUsageData: true.
	Privacy sendEntityNames: true.
	Privacy sendSourceCode: true.
	SessionManager default
		register: (ClassSessionHandler forClassNamed: self name)
		inCategory: SessionManager default toolsCategory
		atPriority: SessionManager default defaultPriority + 1000.
	self recordMeta.
	uniqueInstance := WeakArray new: 1.
	self tuaAnnouncer unsubscribe: self.
	self tuaAnnouncer weak when: TUAAnnouncement send: #recordAnnouncement: to: self.
	SystemAnnouncer uniqueInstance unsubscribe: self.
	SystemAnnouncer uniqueInstance weak
		when: PrivacyChangedAnnoucement
		send: #privacyChange:
		to: self
]

{ #category : #'initialize-release' }
TUAEventCollector class >> privacyChange: anAnnouncement [
	Privacy sendDiagnosticsAndUsageData
		ifTrue: [ self recordMeta.
			self tuaCore enable ]
		ifFalse: [ self tuaCore disable ]
]

{ #category : #events }
TUAEventCollector class >> recordAnnouncement: anAnnouncement [
	self uniqueInstance recordAnnouncement: anAnnouncement 
]

{ #category : #action }
TUAEventCollector class >> recordMeta [
	[ GTEventCollector new
		category: self eventCategory;
		url:
			self tuaRecordingSettings url;
		addIfAvailable:
			{('userId'
				-> (MD5 hashMessage: (Unicode toUppercaseString: Author fullName)) hex).
			('type' -> #MetaData).
			('timestamp' -> DateAndTime now).
			('versionCode' -> self versionCode).
			('tuaEventFormatVersion' -> self dataVersion)} asDictionary;
		register ]
		on: Error
		do: [ :error | 
			TUARecordingSettings showErrors
				ifTrue: [ error pass ] ]
]

{ #category : #'system startup' }
TUAEventCollector class >> startUp: resuming [
	self recordMeta 
]

{ #category : #'instance creation' }
TUAEventCollector class >> tuaAnnouncer [
	^ TUAAnnouncer uniqueInstance
]

{ #category : #'initialize-release' }
TUAEventCollector class >> tuaCore [
	^ TUATestUsageAnalyser
]

{ #category : #action }
TUAEventCollector class >> tuaRecordingSettings [
	^ TUARecordingSettings
]

{ #category : #'instance creation' }
TUAEventCollector class >> uniqueInstance [
	"Return the uniqueInstance (It's strange but avoid problem wih garbage collector)"

	^ uniqueInstance first
		ifNil: [ uniqueInstance
				at: 1
				put:
					(self new
						occupant: self tuaAnnouncer;
						register;
						yourself) ]
]

{ #category : #'initialize-release' }
TUAEventCollector class >> unload [

	self uniqueInstance liberate

]

{ #category : #action }
TUAEventCollector class >> versionCode [
	^ (MonticelloRepositoryBrowser allManagers
		collect: [ :a |
			a description
				->
					{(a versionInfo ifNotNil: [ :vI | vI id ]).
					(a repositoryGroup remotes collect: [ :b | {b location -> b repositoryVersionString} asDictionary  ])} ]) asDictionary.
]

{ #category : #configuration }
TUAEventCollector >> defaultCategory [
	^ self class eventCategory 
]

{ #category : #events }
TUAEventCollector >> recordAnnouncement: anAnnouncement [
	"Aware with the privacy"

	Privacy sendDiagnosticsAndUsageData
		ifFalse: [ ^ self ].
	(anAnnouncement respondsTo: #dataForTestUsageAnalyser)
		ifTrue: [ [ self
				add:
					(anAnnouncement dataForTestUsageAnalyser
						at: #obfuscated put: Privacy sendEntityNames not;
						at: #type put: anAnnouncement type;
						at: #timestamps put: DateAndTime now asString;
						yourself) ]
				on: Error
				do: [ :error | 
					self class tuaRecordingSettings showErrors
						ifTrue: [ error pass ] ] ]
]

{ #category : #accessing }
TUAEventCollector >> url [
	^url := self class tuaRecordingSettings url
]
