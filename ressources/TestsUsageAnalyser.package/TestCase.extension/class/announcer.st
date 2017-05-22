*TestsUsageAnalyser
announcer 
	TestsDetectionListener uniqueInstance enable 
		ifTrue: [ ^ TestsDetectionListener TAAnnouncer. ] 
		ifFalse: [ ^ self announcers at: self ifAbsentPut: [ Announcer new ] ].
	