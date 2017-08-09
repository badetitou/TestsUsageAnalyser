actions
disable
	self tuaCodeDetectionListener disable.
	self tuaTestDetectionListener disable.
	GTEventRecorder uniqueInstance removeCollector: TUAEventCollector uniqueInstance
	