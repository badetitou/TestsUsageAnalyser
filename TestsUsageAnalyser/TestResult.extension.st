Extension { #name : #TestResult }

{ #category : #'*TestsUsageAnalyser' }
TestResult >> addHalt: aTestCase [

	^self halted add: aTestCase
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> dispatchResultsIntoHistory [ 

	self classesTested do: 
		[ :testClass | 
		| aDictionnary |
		aDictionnary := (self selectResultsForTestCase: testClass).
		aDictionnary at: #TUATestResult put: self.
		self class
			historyAt: testClass
			put: aDictionnary .].
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> halted [
	^ TUATestTools halted.
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> halted: anObject [
	^ TUATestTools halted: anObject.
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> hasSkipped [

	^self skipped notEmpty
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> initialize [
	super initialize.
	passed := OrderedCollection new.
	failures := Set new.
	errors := OrderedCollection new.
	skipped := OrderedCollection new.
	self halted: OrderedCollection new. 
	timeStamp := DateAndTime now
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> isSkipped: aTestCase [

	^self skipped includes: aTestCase
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> runCase: aTestCase [
	[
	aTestCase announce: TestCaseStarted withResult: self.
	aTestCase runCaseManaged.
	aTestCase announce: TestCaseEnded  withResult: self.
	self addPass: aTestCase]
		on: self class failure , self class skip, self class warning, self class error, Halt
		do: [:ex | ex sunitAnnounce: aTestCase toResult: self]
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> runCaseForDebug: aTestCase [
	[
	aTestCase announce: TestCaseStarted withResult: self.
	aTestCase runCaseManaged.
	aTestCase announce: TestCaseEnded  withResult: self.
	self addPass: aTestCase]
		on: self class failure , self class skip, self class warning, self class error, Halt
		do: [:ex | ex sunitAnnounce: aTestCase toResult: self. ex pass]
]

{ #category : #'*TestsUsageAnalyser' }
TestResult >> updateResultsInHistory [
	|classesToNotify|
	classesToNotify:= Set new.
	#(#passed #failures #errors) do: [ :status | 
		(self perform: status) do: [ :testCase | 
			classesToNotify add: testCase class.
			self class updateTestHistoryFor: testCase status: status ] ].
	classesToNotify addAll: (self halted collect: #class).
	classesToNotify do:[:cl | cl history at: #TUATestResult put: self.
		cl historyAnnouncer announce: (TestSuiteEnded result: cl)]
]
