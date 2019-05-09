Extension { #name : #TestCase }

{ #category : #'*TestsUsageAnalyser' }
TestCase class >> announcer [ 
	 ^ TUATestsDetectionListener TAAnnouncer
	
]

{ #category : #'*TestsUsageAnalyser' }
TestCase >> shouldAnnounce [
	^true
]
