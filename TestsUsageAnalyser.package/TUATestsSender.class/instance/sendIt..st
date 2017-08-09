private
sendIt: aDictionnary
	TUAAnnouncer uniqueInstance
		announce:
			(TUAAnnouncement new
				type: #testData;
				entity: aDictionnary;
				yourself)