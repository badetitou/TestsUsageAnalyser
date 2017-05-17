private
formatDate: aDateAndTime
	^aDateAndTime dayOfWeekAbbreviation , ' ', aDateAndTime dayOfMonth asString , ', ' , aDateAndTime year asString , ' ' , aDateAndTime hour12 asString , ':', aDateAndTime minutes asString , ':', aDateAndTime seconds asString , ' ', aDateAndTime meridianAbbreviation asString .