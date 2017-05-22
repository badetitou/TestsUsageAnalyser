initialize
initialize: aTestMethod
	testsMethods := OrderedCollection new.
	self addTestMethod: aTestMethod.
	self testName: aTestMethod className.
	self startDate: DateAndTime now.
	self status: 'PASS'.