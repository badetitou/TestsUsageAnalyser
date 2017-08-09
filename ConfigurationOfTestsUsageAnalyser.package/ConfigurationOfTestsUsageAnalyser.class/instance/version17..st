versions
version17: arg1
	<version: '1.7' imports: #('0.2-baseline')>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #stable;
				description: 'version 1.7';
				author: 'badetitou';
				timestamp: '6/1/2017 14:34';
				repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main';
				package: #TestsUsageAnalyser
					with: [ | tmp3 |
					tmp3 := arg1.
					tmp3
						file: 'TestsUsageAnalyser-BenoitVerhaeghe.30';
						preLoadDoIt: #preloadForTUA;
						preLoadDoIt: #preloadForTUAStable ] ]