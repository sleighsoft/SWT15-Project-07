*Etoys
currentVocabulary
	"Answer the receiver's current vocabulary"

	| outer |
	^ (outer := self ownerThatIsA: StandardViewer orA: ScriptEditorMorph) 
			ifNotNil:
				[outer currentVocabulary]
			ifNil:
				[super currentVocabulary]