as yet unclassified
send
		TUAAnnouncer uniqueInstance announce: (
			TUAEvent new
				type: #codeData;
				entity: CodeData toSend;
				yourself
		). 
		CodeData reset.
