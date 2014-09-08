class Room
  attr_accessor :description, :directions

  def initialize(description)
    @description = description
    @directions = Hash.new
  end

  def add_room_to_direction(room, direction)
    @directions[direction] = room
  end
end