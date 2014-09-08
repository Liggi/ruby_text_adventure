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

	if(input == "poop")
		puts "What the hell is wrong with you? No pooping! No!"
	end
end