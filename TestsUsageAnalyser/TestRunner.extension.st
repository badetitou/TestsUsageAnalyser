Extension { #name : #TestRunner }

{ #category : #'*TestsUsageAnalyser' }
TestRunner >> runAll [
	TUATestTools setByTestRunner. self resetResult.
	self runTestSuites: self allSelectedTestSuites.
	self saveResultInHistory
]
