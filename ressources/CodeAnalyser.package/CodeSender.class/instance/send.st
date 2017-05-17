as yet unclassified
send
	ZnClient new 
		https; 
  		host: url; 
  		path: ''; 
  		accept: ZnMimeType applicationJson; 
  		contentReader: [ :entity | NeoJSONReader fromString: entity contents ]; 
  		contentWriter: [ :data | ZnEntity with: (NeoJSONWriter toString: TestsData uniqueInstance toJson) type: ZnMimeType applicationJson]; 
  		post. 
	CodeData reset.