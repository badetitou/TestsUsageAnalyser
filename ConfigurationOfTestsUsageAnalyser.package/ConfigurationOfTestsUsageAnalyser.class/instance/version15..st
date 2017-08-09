versions
version15: arg1
	<version: '1.5' imports: #('0.2-baseline')>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #stable;
				description: 'version 1.5';
				author: 'badetitou';
				timestamp: '5/31/2017 10:40';
				repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main';
				package: #TestsUsageAnalyser
					with: 'TestsUsageAnalyser-BenoitVerhaeghe.24' ]