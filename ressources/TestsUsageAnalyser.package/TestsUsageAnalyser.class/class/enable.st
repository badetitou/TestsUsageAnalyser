accessing
enable
	self disable.
	"CodeDetectionListener enable."
	TestsDetectionListener enable.
	TUAEventCollector initialize.
	GTEventRecorder uniqueInstance addCollector: TUAEventCollector uniqueInstance.