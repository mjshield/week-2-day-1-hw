require('minitest/autorun')
require_relative('./homework_part_b')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestTeam < Minitest::Test


  def setup

    @team_1 = Team.new("The Beagles", ["Jim", "Fred"], "John Madden" )

    # @team_name = "The Beagles"
    # @players = ["Jim", "Ted"]
    # @coach = "John Madden"
    # @points = 0

  end


  def test_get_team_name
    team = @team_1.team_name
    assert_equal("The Beagles", team)
  end

  def test_get_team_coach
    # new_team = Team.new("The Beagles", "John Madden")
    coach_name = @team_1.coach
    assert_equal("John Madden", coach_name)
  end


#the following doesn't work, says add_new_player is an undefined method, what am I missing here?
  def test_add_new_player
    player = @team_1.add_new_player("Jack")
    assert_equal("Jack", player[2])
  end

  # def test_check_player
  #   new_team = Team.new("The Beagles", "John Madden")
  #   player = "Tim"
  #   assert_equal(false, new_team(player))
  # end

end
