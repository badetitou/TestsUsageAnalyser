instance creation
uniqueInstance
	"Return the uniqueInstance (It's strange but avoir problem wih garbage collector)"
	^ uniqueInstance first ifNil: [ 
		uniqueInstance at: 1 put: (
			self new
				occupant: TUAAnnouncer uniqueInstance;
				register;
				yourself) ]