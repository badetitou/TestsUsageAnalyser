versions
version42: spec
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
