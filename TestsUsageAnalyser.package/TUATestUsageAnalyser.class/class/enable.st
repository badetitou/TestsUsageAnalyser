actions
enable
	self tuaCodeDetectionListener enable.
	self tuaTestDetectionListener enable.
	TUAEventCollector initialize.
	GTEventRecorder uniqueInstance addCollector: TUAEventCollector uniqueInstance.