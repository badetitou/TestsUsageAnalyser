as yet unclassified
uniqueInstance
	"I'm a singleton…"
	
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]