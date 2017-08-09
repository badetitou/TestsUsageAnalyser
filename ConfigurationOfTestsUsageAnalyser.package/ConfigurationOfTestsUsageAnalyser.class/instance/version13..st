versions
version13: arg1
	<version: '1.3' imports: #('0.2-baseline')>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #stable;
				description: 'version 1.3';
				author: 'badetitou';
				timestamp: '5/30/2017 16:48';
				repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main';
				package: #TestsUsageAnalyser
					with: 'TestsUsageAnalyser-BenoitVerhaeghe.20' ]