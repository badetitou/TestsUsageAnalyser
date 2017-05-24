accessing
uniqueInstance
	"I am a singleton"
	^ uniqueInstance ifNil: [ uniqueInstance := super new ]