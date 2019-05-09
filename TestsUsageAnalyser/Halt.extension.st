Extension { #name : #Halt }

{ #category : #'*TestsUsageAnalyser' }
Halt >> sunitAnnounce: aTestCase toResult: aTestResult [
	TUATestUsageAnalyser testCaseRaiseHalt: aTestResult.
	aTestResult addHalt: aTestCase
]
