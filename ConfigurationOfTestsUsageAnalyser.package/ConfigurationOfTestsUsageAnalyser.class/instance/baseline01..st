baselines
baseline01: arg1
	<version: '0.1-baseline'>
	arg1
		for: #common
		do: [ | tmp2 |
			tmp2 := arg1.
			tmp2
				blessing: #baseline;
				package: 'TestsUsageAnalyser' ]