versions
version10: arg1
	<version: '1.0' imports: #('0.1-baseline')>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #stable;
				description: 'version 1.0';
				author: 'badetitou';
				timestamp: '5/29/2017 15:41';
				repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main';
				package: 'TestsUsageAnalyser'
					with: 'TestsUsageAnalyser-BenoitVerhaeghe.13' ]