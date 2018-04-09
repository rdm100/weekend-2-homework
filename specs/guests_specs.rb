require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../rooms')
require_relative('../songs')

class TestGuest < MiniTest::Test

  def setup
    @song = Song.new("Rasberry beret", "Prince")
  	@guest1 = Guest.new("Dave", 10, @song)
    @room = Room.new(2)
  end

  def test_can_get_name
  	name = @guest1.name()
  	assert_equal("Dave", name)
  end

  def test_guest_gives_cash
    cash_left = @guest1.give_cash(@room)
    assert_equal(5, cash_left)
  end

  def test_favourite_song
    @room.get_song(@song)
    is_favourite_song = @guest1.does_room_have_favourite_song(@room)
    assert_equal("Yaas", is_favourite_song)
  end

end