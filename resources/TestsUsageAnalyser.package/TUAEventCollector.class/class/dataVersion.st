accessing
dataVersion
	"Support of non new element (without any commit)"
	^ dataVersion ifNil: [ 0.9 ]