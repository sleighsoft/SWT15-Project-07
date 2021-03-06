*Etoys
actorState
	"This method instantiates actorState as a side-effect.
	For simple queries, use actorStateOrNil"
	| state |
	state := self actorStateOrNil.
	state ifNil:
		[state := ActorState new initializeFor: self assuredPlayer.
		self actorState: state].
	^ state