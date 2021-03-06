*Etoys
moveWithPenDownBy: delta
	"If this is a costume for a player with its pen down, draw a line."

	| trailMorph tfm start tfmEnd |
	(trailMorph := self trailMorph) ifNotNil:
		[tfm := self owner transformFrom: trailMorph.
		start :=  self referencePosition.
		trailMorph batchPenTrails
			ifTrue: [trailMorph notePenDown: true
								forPlayer: self player
								at: (tfm localPointToGlobal: start)]
			ifFalse: [trailMorph drawPenTrailFor: self
								from: (tfm localPointToGlobal: start)
								to: (tfmEnd := tfm localPointToGlobal: start + delta).
					trailMorph noteNewLocation: tfmEnd forPlayer: self player]]
