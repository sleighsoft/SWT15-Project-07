testing
test11sensorConnectorWantsPlug

	| connector plug event |
	connector := kit sensorConnectors at: 1.
	plug := PhdETSensorPlugMorph new.
	event := MouseEvent new.
	self should: [connector wantsDroppedMorph: plug event: event].
	
	plug delete.