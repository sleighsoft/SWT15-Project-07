*Etoys-support
scriptorForTextualScript: aSelector ofPlayer: aPlayer
	| aScriptor |
	self world ifNil: [^ nil].
	aScriptor := ScriptEditorMorph new setMorph: aPlayer costume scriptName: aSelector.
	aScriptor position: (self primaryHand position - (10 @ 10)).
	^ aScriptor