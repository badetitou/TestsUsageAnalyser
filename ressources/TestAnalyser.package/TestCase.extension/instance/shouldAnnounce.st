*TestAnalyser
shouldAnnounce
	TestsDetectionListener isEnable 
		ifTrue: [ ^true ] ifFalse: [ ^ self class shouldAnnounce ].