Extension { #name : #Error }

{ #category : #'*TestsUsageAnalyser' }
Error >> sunitAnnounce: aTestCase toResult: aTestResult [
	TUATestUsageAnalyser testCaseRaiseError: aTestResult.
	aTestResult addError: aTestCase
]
