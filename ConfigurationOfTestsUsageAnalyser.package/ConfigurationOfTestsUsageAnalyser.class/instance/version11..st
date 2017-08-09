versions
version11: arg1
	<version: '1.1' imports: #('0.1-baseline')>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #stable;
				description: 'version 1.1';
				author: 'badetitou';
				timestamp: '5/30/2017 10:25';
				repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main';
				package: 'TestsUsageAnalyser'
					with: 'TestsUsageAnalyser-BenoitVerhaeghe.14' ]