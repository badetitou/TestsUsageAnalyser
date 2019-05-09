Class {
	#name : #BaselineOfTestUsageAnalyser,
	#superclass : #BaselineOf,
	#category : 'BaselineOfTestUsageAnalyser'
}

{ #category : #baselines }
BaselineOfTestUsageAnalyser >> baseline: spec [
	"self preloadForTUA.
	self preloadForTUAStable."

	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			spec package: 'TestsUsageAnalyser' ]
]

{ #category : #baselines }
BaselineOfTestUsageAnalyser >> defineDependencies: spec [
	"spec
		baseline: 'TestsUsageAnalyserSmartTestExtends'
		with: [ spec
				repository: 'github://badetitou/TestsUsageAnalyser-SmartTestExtends/' ].
"
]

{ #category : #baselines }
BaselineOfTestUsageAnalyser >> preloadForTUA [
	(Smalltalk globals classNamed: #TUATestsUsageAnalyser)
		ifNotNil: [ (Smalltalk globals classNamed: #TUATestsUsageAnalyser) disable ]
]

{ #category : #baselines }
BaselineOfTestUsageAnalyser >> preloadForTUAStable [
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
