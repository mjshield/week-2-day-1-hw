require('minitest/autorun')
require_relative('./homework_part_b')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestTeam < Minitest::Test

  # def test_get_team_name
  #   new_team = Team.new("Testing", "Testing2")
  #   assert_equal("Testing", new_team.get_team_name)
  # end



  def test_get_team_name
    new_team = Team.new("The Ultra Whomps", "John Madden")
    assert_equal("The Ultra Whomps", new_team.team_name)
  end

  # def test_check_player
  #   new_team = Team.new("The Ultra Whomps", "John Madden")
  #   player = "Tim"
  #   assert_equal(false, new_team(player))
  # end

end
