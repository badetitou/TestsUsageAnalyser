baselines
baseline02: arg1
	<version: '0.2-baseline'>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #baseline;
				repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main';
				package: #TestsUsageAnalyser
					with: [ | tmp3 |
					tmp3 := arg1.
					tmp3
						preLoadDoIt: #preloadForTUA;
						preLoadDoIt: #preloadForTUADevelopment ] ]