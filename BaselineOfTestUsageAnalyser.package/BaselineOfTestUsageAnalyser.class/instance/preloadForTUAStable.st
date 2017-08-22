baselines
preloadForTUAStable
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