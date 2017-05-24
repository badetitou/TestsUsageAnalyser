as yet unclassified
send
		TUAAnnouncer uniqueInstance announce: (
			TUAEvent new
				type: #testData;
				entity: CodeData toSend;
				yourself
		). 
		CodeData reset.
