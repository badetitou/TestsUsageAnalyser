accessing
reset
	uniqueInstance initialize.
	SmalltalkImage current garbageCollect.
	^uniqueInstance