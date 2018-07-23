require( 'minitest/autorun' )
require_relative( '../homeworkpartb' )

class TestTeams < MiniTest::Test

  def setup
    @team = Team.new("Awesome", ["Jaap", "Thingy", "The Dude"], "Coach McCoachFace", 0)

  end

#start tests
  def test_getting_name
    result = @team.name()
    assert_equal("Awesome", result)
  end

  def test_getting_players
    result = @team.players()
    assert_equal(["Jaap", "Thingy", "The Dude"], result)
  end

  def test_getting_coach
    result = @team.coach()
    assert_equal("Coach McCoachFace", result)
  end

  def test_set_name
    @team.set_coach("Strict Coach")
    assert_equal("Strict Coach", @team.coach())
  end

  def test_add_player
    @team.add_player("Rando")
    assert_equal(["Jaap", "Thingy", "The Dude", "Rando"], @team.players())
  end

  def test_check_name
    result = @team.check_name("Thingy")
    assert_equal(true, result)
  end

  def test_add_wins
    result = @team.add_wins("win")
    assert_equal(1, result)
  end

end
