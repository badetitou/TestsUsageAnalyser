instance creation
uniqueInstance
	^ uniqueInstance first ifNil: [ 
		uniqueInstance at: 1 put: (
			self new
				occupant: TUAAnnouncer uniqueInstance;
				register;
				yourself) ]