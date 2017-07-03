require('minitest/autorun')
require_relative('./homework_part_b')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestTeam < Minitest::Test

  # def test_get_team_name
  #   new_team = Team.new("Testing", "Testing2")
  #   assert_equal("Testing", new_team.get_team_name)
  # end

  def setup

    @team_name = "The Ultra Whomps"
    @players = ["Jim", "Ted"]
    @coach = "John Madden"
    @points = 0

  end


  def test_get_team_name
    team_name = @team_name
    assert_equal("The Ultra Whomps", team_name)
  end

  def test_get_team_coach
    # new_team = Team.new("The Ultra Whomps", "John Madden")
    coach_name = @coach
    assert_equal("John Madden", coach_name)
  end


#the following doesn't work, says add_new_player is an undefined method, what am I missing here?
  def test_add_new_player
    add_new_player(@players, "Jack")
    new_player = @players[2]
    assert_equal("Jack", new_player)
  end

  # def test_check_player
  #   new_team = Team.new("The Ultra Whomps", "John Madden")
  #   player = "Tim"
  #   assert_equal(false, new_team(player))
  # end

end
