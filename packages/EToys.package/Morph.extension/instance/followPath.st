*Etoys-support
followPath
	| pathPoints offset |
	(pathPoints := self renderedMorph valueOfProperty: #pathPoints) ifNil: [^ Beeper beep].
	offset := owner position - (self extent // 2).
	pathPoints do:
		[:aPoint |
			self position: aPoint + offset.
			self world displayWorld.
			(Delay forMilliseconds: 20) wait]