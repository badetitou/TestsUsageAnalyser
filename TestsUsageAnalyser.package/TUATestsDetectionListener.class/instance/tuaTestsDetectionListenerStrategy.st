announcement registration
tuaTestsDetectionListenerStrategy
	^ tuaTestsDetectionListenerStrategy
		ifNil: [ tuaTestsDetectionListenerStrategy := TUATestsDetectionListenerStrategyActivated new ]