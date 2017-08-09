versions
version215: spec
	<version: '2.15' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.15
		This package collects the result of the tests you run and the modifications of your code.
The data are send here : http://gc.dcc.uchile.cl. ( thanks to Juraj Kubelka)

I will use the data to analyse how pharo developers use the tests.'.
		spec timestamp: '6/28/2017 14:20'.
			spec author: 'badetitou'.
			spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
			spec
				package: #TestsUsageAnalyser
				with: [ spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.67'.
					spec preLoadDoIt: #preloadForTUA.
					spec preLoadDoIt: #preloadForTUAStable ] ]
