sending
send
	TestsData testSuite ifNotNil: [  
		(TestsData uniqueInstance testClasses size == TestsData testSuite size) ifFalse:[
			^self.
		].
		self sendIt: TestsData uniqueInstance toSend.
		TestsData testSuite: nil.
	] ifNil: [
		self sendIt: TestsData uniqueInstance toSend.
	].
	TestsData reset.
	TestTools reset.