accessing
enable
	self disable.
	"CodeDetectionListener enable."
	TestsDetectionListener enable.
	GTEventRecorder uniqueInstance addCollector: TUAEventCollector uniqueInstance.