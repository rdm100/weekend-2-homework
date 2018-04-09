require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSong < MiniTest::Test

  def setup
  	@song = Song.new("Rasberry beret", "Prince")
  end

  def test_can_get_title
  	title = @song.title()
  	assert_equal("Rasberry beret", title)
  end

    def test_can_get_artist
  	artist = @song.artist()
  	assert_equal("Prince", artist)
  end

end