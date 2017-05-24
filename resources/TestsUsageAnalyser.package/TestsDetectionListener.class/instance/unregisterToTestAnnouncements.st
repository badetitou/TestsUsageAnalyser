accessing
unregisterToTestAnnouncements
	self class TAAnnouncer unsubscribe: self.
	TestCase historyAnnouncer unsubscribe: self.