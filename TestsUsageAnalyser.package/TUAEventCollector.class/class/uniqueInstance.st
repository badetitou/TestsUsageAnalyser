instance creation
uniqueInstance
	"Return the uniqueInstance (It's strange but avoid problem wih garbage collector)"

	^ uniqueInstance first
		ifNil: [ uniqueInstance
				at: 1
				put:
					(self new
						occupant: self tuaAnnouncer;
						register;
						yourself) ]