require("pry")
class Room

  attr_reader :song, :guest, :capacity, :cost, :cash

  def initialize(capacity)
    @capacity = capacity
    @guest = []
    @song = []
    @cost = 5
    @cash = 0
  end

 def get_guest(guest)
     @guest.push(guest)
 end

 def remove_guest()
     @guest.pop()
 end


 def get_song(song)
     @song.push(song)
 end

 def is_room_at_capacity()
    if @guest.count >= @capacity
      #return "Room is full #{guest.name} you can't get in."
      return true
    end
 end
 
 def pay_entry(guest)
    if guest.guest_cash > @cost
      #return "Entry paid"
      return true
    #   return "#{guest.name} in you go, have a good time!"
    # else
    #   return "Sorry #{guest.name} you don't have enough money to come in"
    end
 end

 def add_cash_to_room()
 	@cash + @cost
 end

 # def can_guest_come_in(guest, room) 
 #   if is_room_at_capacity(guest) 
 #    binding.pry
 #      if pay_entry(guest)
 #        guest.give_cash(room)
 #        add_cash_to_room()
 #        return pay_entry(guest)
 #      end
 #   end
 # end	

 def can_guest_come_in(guest, room) 
   if is_room_at_capacity() == true
   # if pay_entry(guest) == true
        #guest.give_cash(room)
        #add_cash_to_room()
        #get_guest(guest)
        return true #{}"#{guest.name} in you go, have a good time!"
     # end
   end
 end


end
