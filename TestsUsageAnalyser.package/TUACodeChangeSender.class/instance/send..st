actions
send: aTUACodeChangeData
		TUAAnnouncer uniqueInstance announce: (
			TUAAnnouncement new
				type: #codeData;
				entity: aTUACodeChangeData toSend;
				yourself
		).
