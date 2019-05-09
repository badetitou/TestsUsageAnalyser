Extension { #name : #TestFailure }

{ #category : #'*TestsUsageAnalyser' }
TestFailure >> sunitAnnounce: aTestCase toResult: aTestResult [
	TUATestUsageAnalyser testCaseFailled: aTestResult.
	aTestResult addFailure: aTestCase
]
