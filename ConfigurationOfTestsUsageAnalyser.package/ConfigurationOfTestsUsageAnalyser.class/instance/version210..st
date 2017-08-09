versions
version210: spec
	<version: '2.10' imports: #('0.2-baseline')>
	spec
		for: #common
		do: [ spec blessing: #stable.
			spec
				description:
					'version 2.10
This package collects the result of the tests you run and the modifications of your code.
The data are send here : http://gc.dcc.uchile.cl. ( thanks to Juraj Kubelka)

I will use the data to analyse how pharo developers use the tests.'.
			spec author: 'badetitou'.
			spec timestamp: '6/11/2017 19:06'.
			spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
			spec
				package: #TestsUsageAnalyser
				with: [ spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.61'.
					spec preLoadDoIt: #preloadForTUA.
					spec preLoadDoIt: #preloadForTUAStable ] ]