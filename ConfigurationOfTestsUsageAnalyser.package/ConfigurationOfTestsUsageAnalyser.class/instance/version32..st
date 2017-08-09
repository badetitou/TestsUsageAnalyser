versions
version32: spec
	<version: '3.2' imports: #('0.2-baseline')>
	self preloadForTUA.
	self preloadForTUAStable.
	spec
		for: #common
		do: [ spec blessing: #stable.
			spec description: 'version 3.2'.
			spec timestamp: '6/30/2017 10:00'.
			spec author: 'badetitou'.
			spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
			spec package: #TestsUsageAnalyser with: [ spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.83' ] ]