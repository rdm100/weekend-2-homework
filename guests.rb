class Guest

	attr_reader :name, :guest_cash, :favourite_song

  def initialize(name, guest_cash, favourite_song)

    @name = name
    @guest_cash = guest_cash
    @favourite_song = favourite_song

  end

  def give_cash(room)
  	@guest_cash - room.cost
  end

  def does_room_have_favourite_song(room)
    if room.song.include?(@favourite_song)
    	return "Yaas"
    end
  end

end