accessing
postLoad
	Metacello new
		githubUser: 'badetitou'
			project: 'TestsUsageAnalyser-SmartTestExtends'
			commitish: 'master'
			path: '.';
		configuration: 'TestsUsageAnalyserSmartTestExtends';
		onConflictUseIncoming;
		load