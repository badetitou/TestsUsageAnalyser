"
Send the code to wicch we want
"
Class {
	#name : #TUACodeChangeSender,
	#superclass : #Object,
	#instVars : [
		'url'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TestsUsageAnalyser-RCode'
}

{ #category : #actions }
TUACodeChangeSender >> send: aTUACodeChangeData [
		TUAAnnouncer uniqueInstance announce: (
			TUAAnnouncement new
				type: #codeData;
				entity: aTUACodeChangeData toSend;
				yourself
		).

]
