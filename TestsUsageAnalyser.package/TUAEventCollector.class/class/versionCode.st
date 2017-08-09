action
versionCode
	^ (MonticelloRepositoryBrowser allManagers
		collect: [ :a |
			a description
				->
					{(a versionInfo ifNotNil: [ :vI | vI id ]).
					(a repositoryGroup remotes collect: [ :b | {b location -> b repositoryVersionString} asDictionary  ])} ]) asDictionary.