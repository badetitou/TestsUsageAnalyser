Class {
	#name : #ConfigurationOfTestsUsageAnalyser,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : 'ConfigurationOfTestsUsageAnalyser'
}

{ #category : #'development support' }
ConfigurationOfTestsUsageAnalyser class >> DevelopmentSupport [
	<apiDocumentation>
	
]

{ #category : #private }
ConfigurationOfTestsUsageAnalyser class >> baseConfigurationClassIfAbsent: arg1 [
	^ Smalltalk
		at: #ConfigurationOf
		ifAbsent: [ self ensureMetacelloBaseConfiguration.
			Smalltalk at: #ConfigurationOf ifAbsent: arg1 ]
]

{ #category : #private }
ConfigurationOfTestsUsageAnalyser class >> ensureMetacello [
	(self baseConfigurationClassIfAbsent: [  ]) ensureMetacello
]

{ #category : #private }
ConfigurationOfTestsUsageAnalyser class >> ensureMetacelloBaseConfiguration [
	Smalltalk
		at: #ConfigurationOf
		ifAbsent: [ | tmp2 tmp3 |
			tmp2 := MCHttpRepository
				location: 'http://smalltalkhub.com/mc/dkh/metacello/main'
				user: ''
				password: ''.
			tmp2
				versionReaderForFileNamed: 'Metacello-Base-dkh.107'
				do: [ :arg1 | 
					tmp3 := arg1 version.
					tmp3 load.
					tmp3 workingCopy repositoryGroup addRepository: tmp2 ] ]
]

{ #category : #'metacello tool support' }
ConfigurationOfTestsUsageAnalyser class >> isMetacelloConfig [
	^ true
]

{ #category : #loading }
ConfigurationOfTestsUsageAnalyser class >> load [
	<apiDocumentation>
	^ (self project version: #stable) load
]

{ #category : #loading }
ConfigurationOfTestsUsageAnalyser class >> loadBleedingEdge [
	<apiDocumentation>
	^ (self project version: #bleedingEdge) load
]

{ #category : #loading }
ConfigurationOfTestsUsageAnalyser class >> loadDevelopment [
	<apiDocumentation>
	^ (self project version: #development) load
]

{ #category : #accessing }
ConfigurationOfTestsUsageAnalyser class >> project [
	^ self new project
]

{ #category : #'development support' }
ConfigurationOfTestsUsageAnalyser class >> validate [
	<apiDocumentation>
	self ensureMetacello.
	^ ((Smalltalk at: #MetacelloToolBox)
		validateConfiguration: self
		debug: #()
		recurse: false) explore
]

{ #category : #accessing }
ConfigurationOfTestsUsageAnalyser >> customProjectAttributes [
	^ #()
]

{ #category : #versions }
ConfigurationOfTestsUsageAnalyser >> development: spec [
	<version: 'development'>
	
	spec for: #'common' do: [
  		spec
			baseline: 'TestUsageAnalyser'
			with: [ spec repository: 'github://badetitou/TestsUsageAnalyser:developement' ] ]
]

{ #category : #versions }
ConfigurationOfTestsUsageAnalyser >> master: spec [
	<version: 'master'>
	
	spec for: #'common' do: [
  		spec
			baseline: 'TestUsageAnalyser'
			with: [ spec repository: 'github://badetitou/TestsUsageAnalyser' ].
	spec postLoadDoIt: #postLoad ]
]

{ #category : #accessing }
ConfigurationOfTestsUsageAnalyser >> postLoad [
	Metacello new
		githubUser: 'badetitou'
			project: 'TestsUsageAnalyser-SmartTestExtends'
			commitish: 'master'
			path: '.';
		configuration: 'TestsUsageAnalyserSmartTestExtends';
		onConflictUseIncoming;
		load
]

{ #category : #baselines }
ConfigurationOfTestsUsageAnalyser >> preloadForTUA [
	(Smalltalk globals classNamed: #TUATestsUsageAnalyser)
		ifNotNil: [ (Smalltalk globals classNamed: #TUATestsUsageAnalyser) disable ]
]

{ #category : #baselines }
ConfigurationOfTestsUsageAnalyser >> preloadForTUADevelopment [
	| tmp1 |
	StartupPreferencesLoader default actions
		at: 'TUA'
		ifAbsent: [ tmp1 := OrderedCollection new.
			tmp1
				add:
					(StartupAction
						name: 'TUA'
						code: [ | tmp2 |
							tmp2 := Metacello new.
							[ NetNameResolver isConnected ifTrue: [tmp2
								smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo60';
								configuration: 'TestsUsageAnalyser';
								version: #development;
								get;
								load ] ]
								on: Error
								do: [  ] ] 
						runOnce: true).
			StartupPreferencesLoader default addAtStartupInGeneralPreferenceFolder: tmp1 named: 'TUASettingsDevelopment.st' ]
]

{ #category : #baselines }
ConfigurationOfTestsUsageAnalyser >> preloadForTUAStable [
	| tmp1 |
	StartupPreferencesLoader default actions
		at: 'TUA'
		ifAbsent: [ tmp1 := OrderedCollection new.
			tmp1
				add:
					(StartupAction
						name: 'TUA'
						code: [ | tmp2 |
							tmp2 := Metacello new.
							[ NetNameResolver isConnected ifTrue: [tmp2
								smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo60';
								configuration: 'TestsUsageAnalyser';
								version: #stable;
								get;
								load ]]
								on: Error
								do: [  ] ]
						runOnce: true).
			StartupPreferencesLoader default addAtStartupInGeneralPreferenceFolder: tmp1 named: 'TUASettingsStable.st' ]
]

{ #category : #accessing }
ConfigurationOfTestsUsageAnalyser >> project [
	| tmp1 |
	tmp1 := project.
	^ tmp1
		ifNil: [ self class ensureMetacello.
			project := MetacelloMCProject new
				projectAttributes: self customProjectAttributes.
			(Smalltalk at: #MetacelloVersionConstructor)
				on: self
				project: project.
			project loadType: #linear.
			project ]
		ifNotNil: [ tmp1 ]
]

{ #category : #'symbolic versions' }
ConfigurationOfTestsUsageAnalyser >> stable: spec [
	<symbolicVersion: #'stable'>

	spec for: #'common' version: 'master'.
]

{ #category : #versions }
ConfigurationOfTestsUsageAnalyser >> version42: spec [
	<version: '4.2' imports: #('0.2-baseline' )>
	self preloadForTUA.
	self preloadForTUAStable.
	spec
		for: #common
		do: [ spec blessing: #stable.
			spec description: 'version 4.2'.
			spec timestamp: '7/6/2017 15:06'.
			spec author: 'badetitou'.
			spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
			spec
				package: #TestsUsageAnalyser
				with: [ spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.93' ].
			spec baseline: 'TestsUsageAnalyserCORAExtends' with: [ spec repository: 'github://badetitou/TestsUsageAnalyser-CORAExtends/' ]. ]

]
