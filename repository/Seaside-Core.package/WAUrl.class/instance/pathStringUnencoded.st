converting
pathStringUnencoded
	"Answer the path converted to a string without doing URL or HTML escaping."

	"allocate with correct size, avoid copy"
	| string stream |
	string := String new: self pathStringUnencodedSize.
	stream := WriteStream on: string.
	self pathUnencodedOn: stream.
	^ string