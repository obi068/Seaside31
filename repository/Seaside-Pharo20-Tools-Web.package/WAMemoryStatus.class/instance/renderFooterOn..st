rendering
renderFooterOn: html
	| memoryEnd |
	
	memoryEnd := SmalltalkImage current vm parameterAt: 3.

	html tableFoot
		class: 'right';
		with: [
			self
				renderLabel: 'Total'
				value: (self printMemory: memoryEnd) on: html ]