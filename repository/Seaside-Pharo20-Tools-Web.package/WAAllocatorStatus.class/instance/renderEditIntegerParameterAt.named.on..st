rendering
renderEditIntegerParameterAt: anInteger named: aString on: html
	| parameter |
	parameter := SmalltalkImage current vm parameterAt: anInteger.
	self
		renderLabel: aString
		value: [
			html render: parameter.
			self
				renderEditVMParameterAt: anInteger
				callback: [ self editIntegerVMParameterAt: anInteger named: aString ]
				on: html ]
		on: html