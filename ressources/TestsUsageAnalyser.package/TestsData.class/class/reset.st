accessing
reset
	self uniqueInstance initialize.
	self testSuite: nil.
	SmalltalkImage current garbageCollect.
	^uniqueInstance