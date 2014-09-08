class Player
  attr_accessor :currentRoom

  def initialize(name, room)
    @name = name
    @currentRoom = room
  end
end