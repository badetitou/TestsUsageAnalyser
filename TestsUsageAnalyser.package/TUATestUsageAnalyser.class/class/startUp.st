initialization
startUp
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

	