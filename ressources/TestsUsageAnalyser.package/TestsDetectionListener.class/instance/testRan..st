private
testRan: anAnnouncement
	"Some staff"
	| aTestClass |
	TestsData uniqueInstance 
		author: (MD5 hashMessage: (Unicode toUppercaseString: Author uniqueInstance fullName)) asString;
		endDate: DateAndTime now.
	aTestClass := TestsData uniqueInstance testClasses at: (TestsData uniqueInstance testClasses size).
	
