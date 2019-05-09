Extension { #name : #TestSkip }

{ #category : #'*TestsUsageAnalyser' }
TestSkip >> sunitAnnounce: aTestCase toResult: aTestResult [
	TUATestUsageAnalyser testCaseSkipped: aTestResult.
	aTestResult addSkip: aTestCase
]
