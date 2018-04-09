require('minitest/autorun')
require('minitest/rg')

require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')

class TestRoom < MiniTest::Test

  def setup

  	@room = Room.new(2)
  	@song = Song.new("Rasberry beret", "Prince")
  	@guest1 = Guest.new("Dave", 10, @song)
  	@guest2 = Guest.new("Mike", 15, @song)
  	@guest3 = Guest.new("Paul", 20, @song)

  end

  def test_room_capacity
    assert_equal(2, @room.capacity)
  end

 # def test_room_full
 # 	@room.get_guest(@guest1)
 # 	@room.get_guest(@guest2)
 # 	room_full = @room.is_room_at_capacity(@guest3)
 #    assert_equal("Room is full Dave you can't get in.", room_full)
 #  end

  def test_put_guest_in_the_room 
  	@room.get_guest(@guest1)
  	assert_equal(1, @room.guest.count)
  end	

  def test_take_the_guest_out_of_room 
  	@room.get_guest(@guest1)
  	@room.remove_guest()
  	assert_equal(0, @room.guest.count)
  end

  def test_put_song_in_the_room 
  	@room.get_song(@song)
  	assert_equal(1, @room.song.count)
  end

  # def test_is_room_at_capacity
  # 	@room.get_guest(@guest1)
  # 	@room.get_guest(@guest2)
  # 	#@room.get_guest(@guest3)
  # 	capacity = @room.is_room_at_capacity(@guest3)YouAll
  # 	assert_equal("Room is full Paul you can't get in.", capacity)
  # end

    def test_is_room_at_capacity
  	@room.get_guest(@guest1)
  	@room.get_guest(@guest2)
  	#@room.get_guest(@guest3)
  	capacity = @room.is_room_at_capacity()
  	assert_equal(true, capacity)
  end

  def test_pay_entry
  	pay = @room.pay_entry(@guest1)
  	assert_equal(true, pay)
  end

  # def test_pay_entry
  # 	pay = @room.pay_entry(@guest1)
  # 	assert_equal("Dave in you go, have a good time!", pay)
  # end

  def test_can_guest_come_in
  	can_guest_come_in = @room.can_guest_come_in(@guest1, @room)
  	assert_equal(true, can_guest_come_in)
  end



end
