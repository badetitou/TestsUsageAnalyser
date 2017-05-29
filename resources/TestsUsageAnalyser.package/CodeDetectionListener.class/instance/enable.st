system changes
enable
	SystemAnnouncer uniqueInstance unsubscribe: self.
	{	CategoryAdded -> #categoryAdded:. 
		CategoryRemoved -> #categoryRemoved:.
		CategoryRenamed -> #categoryRenamed:.
		ClassAdded-> #behaviorAdded:.
		ClassRemoved->#behaviorRemoved:.
		ClassRecategorized -> #classRecategorized:.
		ClassRenamed -> #classRenamed:.
		ClassCommented -> #classCommented:.
		ClassModifiedClassDefinition -> #behaviorModified:.
		MethodAdded -> #methodAdded:.
		MethodModified -> #methodModified:.
		MethodRemoved -> #methodRemoved:.
	} do: [ :pair |
		SystemAnnouncer uniqueInstance weak
			when: pair key 
			send: pair value 
			to: self ].