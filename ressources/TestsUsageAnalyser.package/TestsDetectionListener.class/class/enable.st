action
enable
	self uniqueInstance enable: true.
	TestsData reset.
	TestTools initialize.
	self uniqueInstance registerToTestAnnouncements.