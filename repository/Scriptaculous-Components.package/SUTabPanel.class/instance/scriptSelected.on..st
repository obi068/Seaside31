scripting
scriptSelected: aComponent on: aScript
	aScript prototype element
		id: (self uid: 'head' at: (self
			findIndex: self selected
			ifAbsent: [ ]));
		removeClassName: 'active'.
	self selected: aComponent.
	aScript prototype element
		id: (self uid: 'head' at: (self
			findIndex: self selected
			ifAbsent: [ ^ self ]));
		addClassName: 'active'.
	aScript prototype element
		id: (self uid: 'body' at: 0);
		update: self selected