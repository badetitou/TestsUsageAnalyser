private
testRan: anAnnouncement
	self tuaTestsSender
		send:
			((self testRunning at: (anAnnouncement testResult history at: #TUATestResult) ifAbsent: [ ^ self ])
				author: (MD5 hashMessage: (Unicode toUppercaseString: Author fullName)) hex;
				endDate: DateAndTime now).
	self testRunning removeKey: (anAnnouncement testResult history at: #TUATestResult)