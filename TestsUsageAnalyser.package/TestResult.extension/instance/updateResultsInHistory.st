*TestsUsageAnalyser
updateResultsInHistory
	|classesToNotify|
	classesToNotify:= Set new.
	#(#passed #failures #errors) do: [ :status | 
		(self perform: status) do: [ :testCase | 
			classesToNotify add: testCase class.
			self class updateTestHistoryFor: testCase status: status ] ].
	classesToNotify addAll: (self halted collect: #class).
	classesToNotify do:[:cl | cl history at: #TUATestResult put: self.
		cl historyAnnouncer announce: (TestSuiteEnded result: cl)]