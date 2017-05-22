sending
send
	TestsData testSuite ifNotNil: [  
		(TestsData uniqueInstance testClasses size == TestsData testSuite size) ifFalse:[
			^self.
		].
		self sendIt: TestsData toSend.
		TestsData testSuite: nil.
	] ifNil: [
		self sendIt: TestsData toSend.
	].
	TestsData reset.
	TestTools reset.