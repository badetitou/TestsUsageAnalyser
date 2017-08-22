baselines
baseline: spec
	<baseline>
	self preloadForTUA.
	self preloadForTUAStable.
	spec
		for: #common
		do: [ self defineDependencies: spec.
			spec
				repository: 'github://badetitou/TestsUsageAnalyser';
				package: 'TestsUsageAnalyser';
				group: 'default' with: #('TestsUsageAnalyser' 'TestsUsageAnalyserSmartTestExtends') ]