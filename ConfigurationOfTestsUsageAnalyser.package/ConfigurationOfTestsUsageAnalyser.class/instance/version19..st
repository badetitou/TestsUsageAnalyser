versions
version19: spec
	<version: '1.9' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.9
This package collect the result of the tests you run and the modifications of your code.
The data are send here : http://gc.dcc.uchile.cl. ( thanks to Juraj Kubelka)

I will use the data to analyse how pharo developers use the tests.'.
		spec author: 'badetitou'.
		spec timestamp: '6/2/2017 11:26'.
		spec repository: 'http://smalltalkhub.com/mc/badetitou/TestsUsageAnalyser/main'.
		spec package: #TestsUsageAnalyser with: [
			spec file: 'TestsUsageAnalyser-BenoitVerhaeghe.34'.
					spec preLoadDoIt: #preloadForTUA.
					spec preLoadDoIt: #preloadForTUAStable ]].