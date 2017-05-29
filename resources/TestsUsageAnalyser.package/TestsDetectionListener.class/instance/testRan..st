private
testRan: anAnnouncement
	"Some staff"
	TestsData uniqueInstance 
		author: (MD5 hashMessage: (Unicode toUppercaseString: Author uniqueInstance fullName)) hex;
		endDate: DateAndTime now.
	TestsSender uniqueInstance send.