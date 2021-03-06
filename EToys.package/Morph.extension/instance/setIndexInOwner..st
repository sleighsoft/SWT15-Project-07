*Etoys-geometry
setIndexInOwner: anInteger
	"Answer which position the receiver holds in its owner's hierarchy"

	"There is some concern about submorphs that aren't really to be counted, such as a background morph of a playfield."
	| container topRenderer indexToUse |
	container := (topRenderer := self topRendererOrSelf) owner.
	indexToUse := (anInteger min: container submorphCount) max: 1.
	container addMorph: topRenderer asElementNumber: indexToUse