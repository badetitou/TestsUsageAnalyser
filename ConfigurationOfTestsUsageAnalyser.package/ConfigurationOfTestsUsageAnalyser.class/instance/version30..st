versions
version30: spec
	<version: '3.0' imports: #('0.2-baseline')>
	spec
		for: #common
		do: [ spec blessing: #stable.
			spec description: 'version 3.0'.
			spec timestamp: '6/30/2017 9:34'.
			spec author: 'badetitou'.
			spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
			spec
				package: #TestsUsageAnalyser
				with: [ spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.73'.
					spec preLoadDoIt: #preloadForTUA.
					spec preLoadDoIt: #preloadForTUAStable ] ]