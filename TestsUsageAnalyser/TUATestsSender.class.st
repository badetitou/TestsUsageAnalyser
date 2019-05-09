"
Send the TestsData to the url
"
Class {
	#name : #TUATestsSender,
	#superclass : #Object,
	#instVars : [
		'url'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #sending }
TUATestsSender >> send: aTestData [
	self sendIt: aTestData toSend.
	TUATestTools reset
]

{ #category : #private }
TUATestsSender >> sendIt: aDictionnary [
	TUAAnnouncer uniqueInstance
		announce:
			(TUAAnnouncement new
				type: #testData;
				entity: aDictionnary;
				yourself)
]
