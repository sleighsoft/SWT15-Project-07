*Etoys-world menu
hideAllPlayers

	| a |
	a := OrderedCollection new.
	self allMorphsDo: [ :x | 
		(x isKindOf: ViewerFlapTab) ifTrue: [a add: x]
	].
	a do: [ :each | each delete].
