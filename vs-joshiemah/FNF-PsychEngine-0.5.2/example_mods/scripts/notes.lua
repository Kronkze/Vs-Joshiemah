function onCreatePost()
	for i=0, getProperty('unspawnNotes.length')-1 do
		setPropertyFromGroup('unspawnNotes', i, 'bambinotes', 'bambinotes')
	end
end