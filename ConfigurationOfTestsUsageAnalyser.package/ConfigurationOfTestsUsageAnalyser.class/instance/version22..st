versions
version22: spec
	<version: '2.2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.2
This package collect the result of the tests you run and the modifications of your code.
The data are send here : http://gc.dcc.uchile.cl. ( thanks to Juraj Kubelka)

I will use the data to analyse how pharo developers use the tests.'.
		spec author: 'badetitou'.
		spec timestamp: '6/7/2017 15:43'.
		spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
		spec package: #TestsUsageAnalyser with: [
			spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.42'.
					spec preLoadDoIt: #preloadForTUA.
					spec preLoadDoIt: #preloadForTUAStable ]].
