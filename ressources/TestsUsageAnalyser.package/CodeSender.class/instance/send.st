as yet unclassified
send
		TUAAnnouncer uniqueInstance announce: (
			TUAEvent new
				entity: CodeData toSend;
				yourself
		). 
		CodeData reset.
