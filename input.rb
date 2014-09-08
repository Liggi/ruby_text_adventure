def processInput(input, player)
	if(input == "look")
		puts player.currentRoom.description
	end

	if(input == "north")
		player.currentRoom = player.currentRoom.directions["north"]
		puts player.currentRoom.description
	end

	if(input == "south")
		player.currentRoom = player.currentRoom.directions["south"]
		puts player.currentRoom.description
	end
end