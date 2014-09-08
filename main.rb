load "room.rb"
load "player.rb"
load "input.rb"

class Main
  @@endGame = false

  def initialize_player(name)
    @player = Player.new(name, @@firstRoom)
  end

  def create_initial_rooms()
    @@firstRoom = Room.new("You are in a room, about 10ft by 10ft. The walls are painted white. There are no markings, no windows, no doors. There's a little cubbyhole to the north.")
    @@anotherRoom = Room.new("You found a little tiny cubbyhole. You're in it.")

    @@firstRoom.add_room_to_direction(@@anotherRoom, "north")
    @@anotherRoom.add_room_to_direction(@@firstRoom, "south")
  end

  def start_game()
    puts "Hey. Welcome to Jason's game. What's your name?"
    name = $stdin.gets.chomp

    puts "Nice to meet you, #{name}. Let's get started. You just type what you want to do, there aren't many options, so don't get your hopes up."

    create_initial_rooms()
    initialize_player(name)

    puts @player.currentRoom.description

    while(!@@endGame)
      input = $stdin.gets.chomp

      processInput(input, @player)

      if(input == "exit")
        puts "Quitting..."
        @@endGame = true
      end
    end
  end
end

Main.new.start_game()