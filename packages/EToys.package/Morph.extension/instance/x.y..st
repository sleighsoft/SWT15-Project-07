*Etoys-geometry
x: xCoord y: yCoord
	| aWorld xyOffset delta aPlayfield |
	(aWorld := self world) ifNil: [^ self position: xCoord @ yCoord].
	xyOffset := self topLeft - self referencePosition.
	delta := (aPlayfield := self referencePlayfield)
		ifNil:
			[xCoord @ (aWorld bottom - yCoord)]
		ifNotNil:
			[aPlayfield cartesianOrigin + (xCoord @ (yCoord negated))].
	self position: (xyOffset + delta)
