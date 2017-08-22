baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			spec
				repository: 'github://badetitou/TestsUsageAnalyser';
				package: 'TestsUsageAnalyser';
				group: 'default' with: #('TestsUsageAnalyser') ]